-- UNION Operator
-- The UNION operator is used to combine the result-set of two or more SELECT statements.
/* 
Every SELECT statement within UNION must have the same number of columns
The columns must also have similar data types
The columns in every SELECT statement must also be in the same order */

--  UNION
SELECT City FROM Cust
UNION
SELECT City FROM Suppliers
ORDER BY City;
-- If some customers or suppliers have the same city, each city will only be listed once, because UNION selects only distinct values.
-- Use UNION ALL to also select duplicate values

-- UNION ALL
SELECT City FROM Cust
UNION ALL
SELECT City FROM Suppliers
ORDER BY City;

-- UNION With WHERE
SELECT City, Country FROM Cust
WHERE Country='Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

-- UNION ALL With WHERE
SELECT City, Country FROM Cust
WHERE Country='Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

-- Another UNION 
SELECT 'Customer' AS Type, ContactName, City, Country
FROM Cust
UNION
SELECT 'Supplier', ContactName, City, Country
FROM Suppliers;