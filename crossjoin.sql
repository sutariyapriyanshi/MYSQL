-- CROSS JOIN 
-- The CROSS JOIN keyword returns all records from both tables (table1 and table2).

-- CROSS JOIN can potentially return very large result-sets.
SELECT Cust.CustomerName, Orders.OrderID
FROM Cust
CROSS JOIN Orders;

/* The CROSS JOIN keyword returns all matching records from both tables whether the other table matches or not. So, 
if there are rows in "Customers" that do not have matches in "Orders", or if there are rows in "Orders" that do not have matches in "Customers",
those rows will be listed as well. */

SELECT Cust.CustomerName, Orders.OrderID
FROM Cust
CROSS JOIN Orders
WHERE Cust.CustomerID=Orders.CustomerID;