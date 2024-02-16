-- FOREIGN KEY Constraint
/* The FOREIGN KEY constraint is used to prevent actions that would destroy links between tables.
A FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table.
The table with the foreign key is called the child table, and the table with the primary key is called the referenced or parent table. */

-- The FOREIGN KEY constraint prevents invalid data from being inserted into the foreign key column, because it has to be one of
--  the values contained in the parent table.

-- FOREIGN KEY on CREATE TABLE
-- creates a FOREIGN KEY on the "PersonID" column when the "payment" table is payment
USE testdb;

CREATE INDEX idx_PersonID ON Persons(PersonID);

-- After creating the index, you can attempt to create the foreign key constraint again
CREATE TABLE payment (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);
SELECT * FROM payment;

-- To allow naming of a FOREIGN KEY constraint, and for defining a FOREIGN KEY constraint on multiple columns

CREATE TABLE pay (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    REFERENCES Persons(PersonID)
);
SELECT * FROM pay;

-- FOREIGN KEY on ALTER TABLE
-- To create a FOREIGN KEY constraint on the "PersonID" column when the "payment" table is already created, use the following SQL:
ALTER TABLE payment ADD FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);

-- To allow naming of a FOREIGN KEY constraint, and for defining a FOREIGN KEY constraint on multiple columns
ALTER TABLE pay
ADD CONSTRAINT FK_PersonOrder
FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);

-- DROP a FOREIGN KEY Constraint
-- To drop a FOREIGN KEY constraint
ALTER TABLE payment DROP FOREIGN KEY PersonID;
ALTER TABLE pay DROP FOREIGN KEY FK_PersonOrder;