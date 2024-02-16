-- UNIQUE Constraint
/* The UNIQUE constraint ensures that all values in a column are different.
Both the UNIQUE and PRIMARY KEY constraints provide a guarantee for uniqueness for a column or set of columns.
A PRIMARY KEY constraint automatically has a UNIQUE constraint.
However, you can have many UNIQUE constraints per table, but only one PRIMARY KEY constraint per table. */

CREATE TABLE child (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    UNIQUE (ID)
);

SELECT * FROM child;

-- To name a UNIQUE constraint, and to define a UNIQUE constraint on multiple columns
CREATE TABLE children (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT UC_child UNIQUE (ID,LastName)
);

SELECT * FROM children;

-- UNIQUE Constraint on ALTER TABLE
ALTER TABLE child ADD UNIQUE (ID);

-- To name a UNIQUE constraint, and to define a UNIQUE constraint on multiple columns
ALTER TABLE children ADD CONSTRAINT UC_child UNIQUE (ID,LastName);

-- DROP a UNIQUE Constraint
ALTER TABLE children DROP INDEX UC_child;