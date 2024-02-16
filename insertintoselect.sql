-- INSERT INTO SELECT Statement
-- The INSERT INTO SELECT statement copies data from one table and inserts it into another table.
-- The INSERT INTO SELECT statement requires that the data types in source and target tables matches.
-- The existing records in the target table are unaffected.

-- copies "Suppliers" into "Customers" (the columns that are not filled with data, will contain NULL)
INSERT INTO Cust (CustomerName, City, Country) SELECT SupplierName, City, Country FROM Suppliers;

-- copies "Suppliers" into "Customers" (fill all columns):
INSERT INTO Cust(CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT SupplierName, ContactName, Address, City, PostalCode, Country FROM Suppliers;

-- copies only the German suppliers into "Customers":
INSERT INTO Cust (CustomerName, City, Country)
SELECT SupplierName, City, Country FROM Suppliers
WHERE Country='Germany';