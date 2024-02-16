-- MIN() and MAX() Functions
-- The MIN() function returns the smallest value of the selected column.
-- The MAX() function returns the largest value of the selected column.

SELECT MIN(Price) AS SmallestPrice FROM Products;
SELECT MAX(Price) AS LargestPrice FROM Products;