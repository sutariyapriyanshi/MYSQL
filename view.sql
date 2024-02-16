-- CREATE VIEW Statement
/* In SQL, a view is a virtual table based on the result-set of an SQL statement.
A view contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database.
You can add SQL statements and functions to a view and present the data as if the data were coming from one single table.
A view is created with the CREATE VIEW statement. */

USE Customer;

SELECT * FROM Cust;

-- CREATE VIEW Examples
-- creates a view that shows all customers from Brazil
CREATE VIEW `Brazil Customers` AS 
SELECT CustomerName, ContactName 
FROM Cust 
WHERE Country = 'Brazil';
-- here backtick is used ` not '
SELECT * FROM `Brazil Customers`;

CREATE VIEW `Products Above Average Price` AS
SELECT ProductName, Price
FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products);

SELECT * FROM `Products Above Average Price`;

-- Updating a View
-- A view can be updated with the CREATE OR REPLACE VIEW statement.
CREATE OR REPLACE VIEW `Brazil Customers` AS
SELECT CustomerName, ContactName, City
FROM Cust
WHERE Country = 'Brazil' OR Country = 'Mexico';

-- Dropping a View
-- A view is deleted with the DROP VIEW statement.
DROP VIEW `Brazil Customers`;