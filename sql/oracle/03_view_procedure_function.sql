-- Question 4 (View) --
CREATE OR REPlACE VIEW CustomerOrderHistoryView AS
SELECT
    u.UserID,
    u.FirstName,
    u.Email,
    COUNT(o.OrderID) AS TotalOrdersPlaced,
    SUM(p.Amount) AS TotalLifetimeSpend,
    MAX(o.OrderTimestamp) AS LastOrderDate
FROM "User" u
JOIN Customer c ON u.UserID = c.CustomerID
LEFT JOIN "Order" o ON c.CustomerID = o.CustomerID
LEFT JOIN Payment p ON o.OrderID = p.OrderID
GROUP BY u.UserID, u.FirstName, u.LastName, u.Email;

-- Question 4 (Procedure) --

CREATE OR REPLACE PROCEDURE PlaceNewOrder(
    p_CustomerID IN NUMBER,
    p_HubID IN NUMBER,
    p_DeliveryFee IN NUMBER
) AS
BEGIN
    INSERT INTO "Order" (
        CustomerID, 
        HubID, 
        DeliveryFee, 
        OrderStatus, 
        EstimatedDeliveryTime
    ) VALUES (
        p_CustomerID, 
        p_HubID, 
        p_DeliveryFee, 
        'Pending', 
        SYSTIMESTAMP + INTERVAL '30' MINUTE
    );

    COMMIT;
END;
/

-- Question 4 (Function) --
CREATE OR REPLACE FUNCTION IsRestaurantOpen(p_RestaurantID IN NUMBER) 
RETURN NUMBER AS
    v_Status NUMBER := 0;
BEGIN
    SELECT COUNT(*)
    INTO v_Status
    FROM RestaurantOperatingHours
    WHERE RestaurantID = p_RestaurantID
    AND TO_CHAR(CURRENT_TIMESTAMP, 'Day') = DayOfWeek
    AND CURRENT_TIMESTAMP BETWEEN OpeningTime AND ClosingTime;

    RETURN v_Status;
EXCEPTION
    WHEN OTHERS THEN
        RETURN 0;
END;
/
