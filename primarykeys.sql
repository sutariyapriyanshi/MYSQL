-- PRIMARY KEY Constraint
-- The PRIMARY KEY constraint uniquely identifies each record in a table.
-- Primary keys must contain UNIQUE values, and cannot contain NULL values.

-- A table can have only ONE primary key; and in the table, this primary key can consist of single or multiple columns (fields).

-- PRIMARY KEY on CREATE TABLE
-- creates a PRIMARY KEY on the "ID" column when the "man" table is created
CREATE TABLE man (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);
SELECT * FROM man;

-- To allow naming of a PRIMARY KEY constraint, and for defining a PRIMARY KEY constraint on multiple columns
CREATE TABLE woman (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT PK_woman PRIMARY KEY (ID,LastName)
);
SELECT * FROM woman;

-- In the example above there is only ONE PRIMARY KEY (PK_woman). However, the VALUE of the primary key is made up of TWO COLUMNS (ID + LastName).

-- PRIMARY KEY on ALTER TABLE
-- To create a PRIMARY KEY constraint on the "ID" column when the table is already created
ALTER TABLE man ADD PRIMARY KEY (ID);

-- To allow naming of a PRIMARY KEY constraint, and for defining a PRIMARY KEY constraint on multiple columns
ALTER TABLE woman ADD CONSTRAINT PK_woman PRIMARY KEY (ID,LastName);
-- If you use ALTER TABLE to add a primary key, the primary key column(s) must have been declared to not contain NULL values 
-- (when the table was first created).

-- DROP a PRIMARY KEY Constraint
-- To drop a PRIMARY KEY constraint
ALTER TABLE man DROP PRIMARY KEY;
ALTER TABLE woman DROP PRIMARY KEY;