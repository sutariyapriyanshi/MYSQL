-- RIGHT JOIN 
-- The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records (if any) from the left table (table1).

SELECT cust.CustomerName, Orders.OrderID,Cust.CustomerID
FROM cust
RIGHT JOIN Orders ON cust.CustomerID = Orders.CustomerID
ORDER BY cust.CustomerName;

-- The RIGHT JOIN keyword returns all records from the right table (Orders), even if there are no matches in the left table (cust).