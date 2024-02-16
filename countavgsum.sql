-- COUNT(), AVG() and SUM() Functions

-- The COUNT() function returns the number of rows that matches a specified criterion.
-- The AVG() function returns the average value of a numeric column. 
-- The SUM() function returns the total sum of a numeric column. 

-- COUNT()
SELECT COUNT(ProductID) FROM Products;
-- NULL values are not counted.

-- AVG()
SELECT AVG(Price) FROM Products;
-- NULL values are ignored.

-- SUM()
SELECT SUM(Quantity) FROM OrderDetails;
-- NULL values are ignored.