  -- Joining Tables
-- A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

-- (that contains an INNER JOIN), that selects records that have matching values in both tables
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;