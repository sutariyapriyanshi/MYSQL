-- LEFT JOIN Keyword
-- The LEFT JOIN keyword returns all records from the left table (table1), and the matching records (if any) from the right table (table2).

-- LEFT JOIN
SELECT Cust.CustomerName, Orders.OrderID
FROM Cust
LEFT JOIN Orders ON Cust.CustomerID = Orders.CustomerID
ORDER BY Cust.CustomerName;

-- The LEFT JOIN keyword returns all records from the left table (Customers), even if there are no matches in the right table (Orders).