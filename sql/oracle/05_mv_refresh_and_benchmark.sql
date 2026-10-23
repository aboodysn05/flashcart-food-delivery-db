-- Procedure to expose safe, controlled refresh capabilities to the application layer
CREATE OR REPLACE PROCEDURE RefreshhubPerformanceMV AS
BEGIN
    DBMS_MVIEW.REFRESH('mv_hub_hourly_performance', 'C');
END;
/

SET SERVEROUTPUT ON;

DECLARE
    v_start_time    NUMBER;
    v_end_time      NUMBER;
    v_raw_elapsed   NUMBER;
    v_mv_elapsed    NUMBER;
    
    -- Counters to track row distribution
    v_raw_row_count NUMBER := 0;
    v_mv_row_count  NUMBER := 0;
    
    v_hub_name      VARCHAR2(100);
    v_hour_block    TIMESTAMP;
    v_vol           NUMBER;
    v_rev           NUMBER;

    -- Cursor 1: Dynamic Base Table Aggregation
    CURSOR c_raw_query IS
        SELECT h.HubName, TRUNC(o.OrderTimestamp, 'HH24'), COUNT(o.OrderID), SUM(NVL(p.Amount, 0))
        FROM Hub h
        JOIN "Order" o ON h.HubID = o.HubID
        LEFT JOIN Payment p ON o.OrderID = p.OrderID
        WHERE o.OrderStatus != 'Cancelled' AND (p.PaymentStatus = 'Success' OR p.PaymentStatus IS NULL)
        GROUP BY h.HubID, h.HubName, TRUNC(o.OrderTimestamp, 'HH24');

    -- Cursor 2: Physical Materialized View Reading
    CURSOR c_mv_query IS
        SELECT HUBNAME, ORDERHOUR, HOURLYORDERVOLUME, TOTALREVENUE
        FROM HUBPERFROMANCEMV;

BEGIN
    ----------------------------------------------------------------
    -- BENCHMARK 1: DYNAMIC BASE TABLE AGGREGATION
    ----------------------------------------------------------------
    v_start_time := DBMS_UTILITY.GET_TIME;
    
    OPEN c_raw_query;
    LOOP
        FETCH c_raw_query INTO v_hub_name, v_hour_block, v_vol, v_rev;
        EXIT WHEN c_raw_query%NOTFOUND;
        v_raw_row_count := v_raw_row_count + 1;
    END LOOP;
    CLOSE c_raw_query;
    
    v_end_time := DBMS_UTILITY.GET_TIME;
    v_raw_elapsed := (v_end_time - v_start_time) * 10; 

    ----------------------------------------------------------------
    -- BENCHMARK 2: PRE-COMPUTED MATERIALIZED VIEW SCAN
    ----------------------------------------------------------------
    v_start_time := DBMS_UTILITY.GET_TIME;
    
    OPEN c_mv_query;
    LOOP
        FETCH c_mv_query INTO v_hub_name, v_hour_block, v_vol, v_rev;
        EXIT WHEN c_mv_query%NOTFOUND;
        v_mv_row_count := v_mv_row_count + 1;
    END LOOP;
    CLOSE c_mv_query;
    
    v_end_time := DBMS_UTILITY.GET_TIME;
    v_mv_elapsed := (v_end_time - v_start_time) * 10; 

    ----------------------------------------------------------------
    -- OUTPUT PERFORMANCE REPORT WITH ROW COUNTS
    ----------------------------------------------------------------
    DBMS_OUTPUT.PUT_LINE('====================================================');
    DBMS_OUTPUT.PUT_LINE('      FLASHCART METRIC PERFORMANCE EVALUATION       ');
    DBMS_OUTPUT.PUT_LINE('====================================================');
    DBMS_OUTPUT.PUT_LINE('Dynamic Base Table SELECT Query Time : ' || v_raw_elapsed || ' ms');
    DBMS_OUTPUT.PUT_LINE('Rows Returned by Dynamic Query       : ' || v_raw_row_count);
    DBMS_OUTPUT.PUT_LINE('----------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('Pre-Computed Materialized View Time : ' || v_mv_elapsed  || ' ms');
    DBMS_OUTPUT.PUT_LINE('Rows Returned by Materialized View  : ' || v_mv_row_count);
    DBMS_OUTPUT.PUT_LINE('----------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('Performance Multiplier Gain        : ' || ROUND(v_raw_elapsed / GREATEST(v_mv_elapsed, 1), 2) || 'x Faster');
    DBMS_OUTPUT.PUT_LINE('====================================================');
END;
/