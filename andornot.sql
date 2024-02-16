-- AND OR NOT
-- The WHERE clause can be combined with AND, OR, and NOT operators.

-- The AND and OR operators are used to filter records based on more than one condition:

-- The AND operator displays a record if all the conditions separated by AND are TRUE.
-- The OR operator displays a record if any of the conditions separated by OR is TRUE.
-- The NOT operator displays a record if the condition(s) is NOT TRUE.

-- AND
SELECT * FROM Cust WHERE Country = 'Mexico' AND CustomerName LIKE 'A%';
-- All Conditions Must Be True
SELECT * FROM Cust WHERE Country = 'Germany' AND City = 'Berlin' AND PostalCode > 1200;

-- OR
-- Select all customers from Germany or Mexico
SELECT * FROM Cust WHERE Country = 'Germany' OR Country = 'Mexico';
-- At Least One Condition Must Be True
SELECT * FROM Cust WHERE City = 'Germany' OR CustomerName LIKE 'A%' OR Country = 'USA';

-- NOT
SELECT * FROM Cust WHERE NOT Country = 'Mexico';

-- Combining AND, OR and NOT
-- You can also combine the AND, OR and NOT operators.
SELECT * FROM Cust
WHERE Country = 'Germany' AND (City = 'Berlin' OR City = 'Stuttgart');

-- selects all fields from "Customers" where country is NOT "Germany" and NOT "USA"
SELECT * FROM Cust
WHERE NOT Country = 'Germany' AND NOT Country = 'USA';