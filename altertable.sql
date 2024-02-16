-- ALTER TABLE Statement
-- The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.
-- The ALTER TABLE statement is also used to add and drop various constraints on an existing table.

USE Customer;

-- ALTER TABLE - ADD Column
-- To add a column in a table
ALTER TABLE Cust ADD Email varchar(255);

USE testdb;
ALTER TABLE Persons ADD DateOfBirth date;
SELECT * FROM CUST;

-- ALTER TABLE - DROP COLUMN
-- To delete a column in a table
ALTER TABLE Cust DROP COLUMN Email;

-- ALTER TABLE - RENAME COLUMN
-- To rename a column in a table
ALTER TABLE Cust CHANGE COLUMN Email Emails varchar(255);

SHOW TABLES FROM testDb;

USE tetstdb;
SELECT * FROM Persons;

-- ALTER TABLE - ALTER/MODIFY DATATYPE
-- To change the data type of a column in a table
ALTER TABLE Persons MODIFY COLUMN DateOfBirth year;

-- drop the column
ALTER TABLE Persons DROP COLUMN DateOfBirth;
ALTER TABLE Cust DROP COLUMN Emails;