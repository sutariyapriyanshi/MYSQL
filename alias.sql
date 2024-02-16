-- Aliases
/* Aliases are used to give a table, or a column in a table, a temporary name.
Aliases are often used to make column names more readable.
An alias only exists for the duration of that query.
An alias is created with the AS keyword. */

-- Alias for Columns
SELECT CustomerID AS ID, CustomerName AS Customer FROM Cust;

-- Single or double quotation marks are required if the alias name contains spaces
SELECT CustomerName AS Customer, ContactName AS "Contact Person" FROM Cust;

-- alias named "Address" that combine four columns (Address, PostalCode, City and Country):
SELECT CustomerName, CONCAT_WS(', ', Addresss, PostalCode, City, Country) AS Address FROM Cust;

-- Alias for Tables
SELECT o.OrderID, o.OrderDate, c.CustomerName FROM Cust AS c, Orders AS o WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;

-- without using alias
SELECT Orders.OrderID, Orders.OrderDate, Cust.CustomerName
FROM Cust, Orders
WHERE Cust.CustomerName='Around the Horn' AND Cust.CustomerID=Orders.CustomerID;