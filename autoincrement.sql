-- What is an AUTO INCREMENT Field?
-- Auto-increment allows a unique number to be generated automatically when a new record is inserted into a table.
-- Often this is the primary key field that we would like to be created automatically every time a new record is inserted.

-- MySQL uses the AUTO_INCREMENT keyword to perform an auto-increment feature.
-- By default, the starting value for AUTO_INCREMENT is 1, and it will increment by 1 for each new record.

CREATE TABLE pepa (
    Personid int NOT NULL AUTO_INCREMENT,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (Personid)
);

-- To let the AUTO_INCREMENT sequence start with another value
ALTER TABLE pepa AUTO_INCREMENT=100;

-- When we insert a new record into the "Persons" table, we do NOT have to specify a value for the "Personid" column (a unique value will be added automatically):
INSERT INTO pepa (FirstName,LastName) VALUES ('Lars','Monsen');
SELECT * FROM pepa;