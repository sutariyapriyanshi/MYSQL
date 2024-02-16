-- DEFAULT Constraint
-- The DEFAULT constraint is used to set a default value for a column.
-- The default value will be added to all new records, if no other value is specified.

-- DEFAULT on CREATE TABLE
-- sets a DEFAULT value for the "City" column when the "pilot" table is created
CREATE TABLE pilot (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes'
);
SHOW TABLES FROM testdb;

-- The DEFAULT constraint can also be used to insert system values, by using functions like CURRENT_DATE()
CREATE TABLE Orders (
    ID int NOT NULL,
    OrderNumber int NOT NULL,
    OrderDate date DEFAULT CURRENT_TIMESTAMP
);
-- here it is not working

-- DEFAULT on ALTER TABLE
-- To create a DEFAULT constraint on the "City" column when the table is already created
ALTER TABLE pilot ALTER City SET DEFAULT 'Sandnes';

-- DROP a DEFAULT Constraint
-- To drop a DEFAULT constraint
ALTER TABLE pilot ALTER City DROP DEFAULT;