-- ORDER BY Keyword
-- The ORDER BY keyword is used to sort the result-set in ascending or descending order.
-- The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.

SELECT * FROM Cust ORDER BY Country;

-- ORDER BY DESC
SELECT * FROM Cust ORDER BY Country DESC;

-- ORDER BY Several Columns
SELECT * FROM Cust ORDER BY Country, CustomerName;

SELECT * FROM Cust ORDER BY Country ASC, CustomerName DESC;