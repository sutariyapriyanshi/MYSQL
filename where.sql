-- WHERE CLAUSE
-- The WHERE clause is used to filter records.
-- The WHERE clause is not only used in SELECT statements, it is also used in UPDATE, DELETE, etc.!

SELECT * FROM CUST;

-- Select all customers from Mexico alphabetic value :
SELECT * FROM Cust WHERE Country='Mexico';

--  Select all customers based on CustomerID numeric value :
SELECT * FROM Cust WHERE CustomerID=1;
SELECT * FROM Cust WHERE CustomerID > 6;