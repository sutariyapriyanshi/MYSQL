-- IN Operator
-- The IN operator allows you to specify multiple values in a WHERE clause.
-- The IN operator is a shorthand for multiple OR conditions.

-- IN Operator
-- selects all customers that are located in "Germany", "France" or "UK"
SELECT * FROM Cust WHERE Country IN ('Germany', 'France', 'UK');

-- -- selects all customers that are not located in "Germany", "France" or "UK"
SELECT * FROM Cust WHERE Country NOT IN ('Germany', 'France', 'UK');

-- selects all customers that are from the same countries as the suppliers
SELECT * FROM Cust WHERE Country IN (SELECT Country FROM Suppliers);