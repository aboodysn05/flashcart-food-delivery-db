-- Question 5 (Materialized View) --
CREATE MATERIALIZED VIEW hubPerfromanceMV
BUILD IMMEDIATE
REFRESH FORCE ON DEMAND
AS
SELECT 
    h.HubID,
    h.HubName,

    TRUNC(o.OrderTimestamp, 'HH24') AS OrderHour,

    COUNT(o.OrderID) AS HourlyOrderVolume,
    SUM(NVL(p.Amount, 0)) AS TotalRevenue
    
FROM Hub h
JOIN "Order" o ON h.HubID = o.HubID
LEFT JOIN Payment p ON o.OrderID = p.OrderID

WHERE o.OrderStatus != 'Cancelled' 
  AND (p.PaymentStatus = 'Success' OR p.PaymentStatus IS NULL)
  
GROUP BY 
    h.HubID, 
    h.HubName, 
    TRUNC(o.OrderTimestamp, 'HH24');