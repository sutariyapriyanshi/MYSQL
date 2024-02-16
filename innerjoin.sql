-- INNER JOIN Keyword
-- The INNER JOIN keyword selects records that have matching values in both tables.

SELECT Orders.OrderID, Cust.CustomerName
FROM Orders
INNER JOIN Cust ON Orders.CustomerID = Cust.CustomerID;
-- The INNER JOIN keyword selects all rows from both tables as long as there is a match between the columns. 
-- If there are records in the "Orders" table that do not have matches in "Customers", these orders will not be shown

-- JOIN Three Tables
SELECT Orders.OrderID, Cust.CustomerName, Shippers.ShipperName
FROM ((Orders
INNER JOIN Cust ON Orders.CustomerID = Cust.CustomerID)
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);