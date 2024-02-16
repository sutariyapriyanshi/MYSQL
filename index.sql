-- CREATE INDEX Statement
-- The CREATE INDEX statement is used to create indexes in tables.
-- Indexes are used to retrieve data from the database more quickly than otherwise. The users cannot see the indexes, they are just used to speed up searches/queries.

-- Updating a table with indexes takes more time than updating a table without (because the indexes also need an update). 
-- So, only create indexes on columns that will be frequently searched against.

-- CREATE INDEX 
-- creates an index named "idx_lastname" on the "LastName" column in the "Persons" table:
CREATE INDEX idx_lastname ON Persons (LastName);
SELECT * FROM Persons;

-- If you want to create an index on a combination of columns, you can list the column names within the parentheses, separated by commas:
CREATE INDEX idx_pname ON Person (LastName, FirstName);
SELECT * FROM Person;

-- DROP INDEX 
-- The DROP INDEX statement is used to delete an index in a table.
ALTER TABLE Persons  DROP INDEX idx_lastname;