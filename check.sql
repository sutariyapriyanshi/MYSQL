-- CHECK Constraint
/* The CHECK constraint is used to limit the value range that can be placed in a column.
If you define a CHECK constraint on a column it will allow only certain values for this column.
If you define a CHECK constraint on a table it can limit the values in certain columns based on values in other columns in the row. */

-- CHECK on CREATE TABLE
-- creates a CHECK constraint on the "Age" column when the "Persons" table is created. 
-- The CHECK constraint ensures that the age of a person must be 18, or older
CREATE TABLE doctor (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CHECK (Age>=18)
);

-- To allow naming of a CHECK constraint, and for defining a CHECK constraint on multiple columns
CREATE TABLE eng (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255),
    CONSTRAINT CHK_eng CHECK (Age>=18 AND City='Sandnes')
);

-- CHECK on ALTER TABLE
-- To create a CHECK constraint on the "Age" column when the table is already created
ALTER TABLE doctor
ADD CHECK (Age>=18);

-- To allow naming of a CHECK constraint, and for defining a CHECK constraint on multiple columns
ALTER TABLE eng
ADD CONSTRAINT CHK_eng CHECK (Age>=18 AND City='Sandnes');

-- DROP a CHECK Constraint
-- To drop a CHECK constraint
ALTER TABLE eng DROP CHECK CHK_eng;