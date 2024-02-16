-- UPDATE Statement

-- The UPDATE statement is used to modify the existing records in a table.

-- Be careful when updating records in a table! Notice the WHERE clause in the UPDATE statement. The WHERE clause specifies which record(s) that should be updated. 
-- If you omit the WHERE clause, all records in the table will be updated!
UPDATE Cust SET ContactName = 'Alfred Schmidt', City= 'Frankfurt' WHERE CustomerID = 1;

SELECT * FROM cust;

-- UPDATE Multiple Records
-- It is the WHERE clause that determines how many records will be updated.
UPDATE Cust SET ContactName='Juan' WHERE CustomerID = 3;

-- The following SQL statement will update the PostalCode to 00000 for all records where country is "Mexico"
UPDATE Cust SET PostalCode = 00000 WHERE CustomerID = 4;

-- If we omit the where clause then,
-- UPDATE Customers SET ContactName='Juan'; all the record of contactname is change to the Juan