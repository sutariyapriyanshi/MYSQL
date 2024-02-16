-- LIMIT Clause
-- The LIMIT clause is used to specify the number of records to return.
-- The LIMIT clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.

SELECT * FROM Cust LIMIT 3;

-- MySQL provides a way to handle this: by using OFFSET.
-- The SQL query below says "return only 3 records, start on record 4 (OFFSET 3)":

SELECT * FROM Cust LIMIT 3 OFFSET 3;

-- ADD a WHERE CLAUSE
SELECT * FROM Cust WHERE Country='Norway' LIMIT 3;