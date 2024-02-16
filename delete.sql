-- DELETE Statement

-- The DELETE statement is used to delete existing records in a table.

-- Be careful when deleting records in a table! Notice the WHERE clause in the DELETE statement. The WHERE clause specifies which record(s) should be deleted. 
-- If you omit the WHERE clause, all records in the table will be deleted!

SELECT * FROM cust;

DELETE FROM Cust WHERE customerID = 14;

-- For deleting the tabel content
-- It is possible to delete all rows in a table without deleting the table. This means that the table structure, attributes, and indexes will be intact
-- DELETE FROM Cust;