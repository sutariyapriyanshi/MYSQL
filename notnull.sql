-- NOT NULL Constraint
-- By default, a column can hold NULL values.
-- The NOT NULL constraint enforces a column to NOT accept NULL values.
-- This enforces a field to always contain a value, which means that you cannot insert a new record, or update a record without adding a value to this field.

-- NOT NULL on CREATE TABLE
CREATE TABLE Person (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);

SHOW tables FROM testdb;

SELECT * FROM person;
SELECT * FROM persons;

-- SQL NOT NULL on ALTER TABLE
-- To create a NOT NULL constraint on the "Age" column when the "Persons" table is already created, use the following SQL
ALTER TABLE Person MODIFY COLUMN Age INT NOT NULL;