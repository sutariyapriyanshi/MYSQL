-- BETWEEN Operator
-- The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.
-- The BETWEEN operator is inclusive: begin and end values are included.

-- BETWEEN
SELECT * FROM Products WHERE Price BETWEEN 10 AND 20;

-- NOT BETWEEN
SELECT * FROM Products WHERE Price NOT BETWEEN 10 AND 20;

-- BETWEEN with IN
SELECT * FROM Products WHERE Price BETWEEN 10 AND 30 AND CategoryID NOT IN (1,2,3);

-- BETWEEN Text Values
SELECT * FROM Products WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni' ORDER BY ProductName;

-- NOT BETWEEN Text Values
SELECT * FROM Products WHERE ProductName NOT BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni' ORDER BY ProductName;

-- BETWEEN Dates
SELECT * FROM Orders WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';