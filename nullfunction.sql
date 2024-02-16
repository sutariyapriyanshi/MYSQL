-- IFNULL() and COALESCE() Functions

--  if any of the "UnitsOnOrder" values are NULL, the result will be NULL.
SELECT ProductName, UnitsOnOrder,UnitPrice * (UnitsInStock + UnitsOnOrder) FROM Prod;

-- IFNULL() Function
-- IFNULL() function lets you return an alternative value if an expression is NULL.
SELECT ProductName,UnitsOnOrder, UnitPrice * (UnitsInStock + IFNULL(UnitsOnOrder, 0)) FROM Prod;

-- COALESCE() Function
-- Or we can use the COALESCE() function, like this
SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0)) FROM Prod;