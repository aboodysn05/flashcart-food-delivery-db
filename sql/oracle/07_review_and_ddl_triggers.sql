-- Trigger 1 --
CREATE OR REPLACE TRIGGER tr_review_audit_scribe
AFTER INSERT OR UPDATE OR DELETE ON Review
FOR EACH ROW
DECLARE
    v_action_type VARCHAR2(10);
    v_exec_user   NUMBER;
BEGIN
    -- DETECT THE DML OPERATION TYPE
    IF INSERTING THEN
        v_action_type := 'INSERT';
        SELECT CustomerID INTO v_exec_user FROM "Order" WHERE OrderID = :new.OrderID;
    ELSIF UPDATING THEN
        v_action_type := 'UPDATE';
        SELECT CustomerID INTO v_exec_user FROM "Order" WHERE OrderID = :new.OrderID;
    ELSIF DELETING THEN
        v_action_type := 'DELETE';
        SELECT CustomerID INTO v_exec_user FROM "Order" WHERE OrderID = :old.OrderID;
    END IF;

    -- If no customer context is linked, default to System Administrator (ID 30)
    IF v_exec_user IS NULL THEN
        v_exec_user := 30;
    END IF;

    -- WRITE THE SYSTEM AUDIT ENTRY
    INSERT INTO AuditLog (
        UserID, 
        "TIMESTAMP", 
        ActionType, 
        TableName
    ) VALUES (
        v_exec_user,
        SYSDATE,
        v_action_type,
        'REVIEW'
    );
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        INSERT INTO AuditLog (UserID, "TIMESTAMP", ActionType, TableName)
        VALUES (30, SYSDATE, v_action_type, 'REVIEW');
END;
/

-----------------------
-- Testing Trigger 1 --
-----------------------

-- 1 --
SET SERVEROUTPUT ON;

SELECT OrderID FROM "Order" WHERE OrderID = 10;
SELECT RestaurantID FROM Restaurant WHERE RestaurantID = 1;

INSERT INTO Review (
    OrderID, 
    RestaurantID, 
    RestaurantRating, 
    "Comment"
) VALUES (
    10, 
    1, 
    5, 
    'Excellent service and super fast delivery!'
);

SELECT * FROM AuditLog ORDER BY "TIMESTAMP" ASC;

-- 2 --
SET SERVEROUTPUT ON;
UPDATE Review 
SET "Comment" = 'Update: Still amazing, highly recommended!' 
WHERE OrderID = 10;

SELECT * FROM AuditLog ORDER BY "TIMESTAMP" ASC;

DELETE FROM Review 
WHERE OrderID = 10;

SELECT * FROM AuditLog ORDER BY "TIMESTAMP" ASC;

-- Trigger 2 --

CREATE OR REPLACE TRIGGER tr_prevent_table_drop
BEFORE DROP ON SCHEMA
BEGIN

    IF ora_dict_obj_type = 'TABLE' AND UPPER(ora_dict_obj_name) IN ('ORDER', 'REVIEW', 'AUDITLOG') THEN
        
        RAISE_APPLICATION_ERROR(-20001, 'Critical Error: Dropping core operational tables is strictly prohibited.');
        
    END IF;
END;
/

-----------------------
-- Testing Trigger 2 --
-----------------------

DROP TABLE Review;
DROP TABLE Order;

CREATE TABLE FlashCart_Test_DummyTable (
    TestID NUMBER PRIMARY KEY
);

DROP TABLE FlashCart_Test_DummyTable;

