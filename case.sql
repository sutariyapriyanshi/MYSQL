-- CASE 
-- The CASE statement goes through conditions and returns a value when the first condition is met (like an if-then-else statement). 
-- So, once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the ELSE clause.
-- If there is no ELSE part and no conditions are true, it returns NULL.

SELECT ProductID, CategoryID,
CASE
    WHEN CategoryID > 3 THEN 'The CategoryID is greater than 3'
    WHEN CategoryID = 1 THEN 'The CategoryID is 1'
    ELSE 'The CategoryID is under 3'
END AS QuantityText
FROM Products;

-- order the customers by City. However, if City is NULL, then order by Country
SELECT CustomerName, City, Country
FROM Cust
ORDER BY
(CASE
    WHEN City IS NULL THEN Country
    ELSE City
END);