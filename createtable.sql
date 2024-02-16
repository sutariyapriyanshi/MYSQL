-- CREATE TABLE 
-- The CREATE TABLE statement is used to create a new table in a database.

USE testDB;
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
-- The column parameters specify the names of the columns of the table.
-- The datatype parameter specifies the type of data the column can hold (e.g. varchar, integer, date, etc.).

SELECT * FROM Persons;

-- Create Table Using Another Table
/* A copy of an existing table can also be created using CREATE TABLE.
The new table gets the same column definitions. All columns or specific columns can be selected.
If you create a new table using an existing table, the new table will be filled with the existing values from the old table. */
USE Customer;

CREATE TABLE TestTable AS
SELECT customername, contactname
FROM cust;

INSERT INTO TestTable (customername, contactname)
SELECT customername, contactname
FROM cust;

SELECT * FROM TestTable;