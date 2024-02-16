-- EXISTS Operator
-- The EXISTS operator is used to test for the existence of any record in a subquery.
-- The EXISTS operator returns TRUE if the subquery returns one or more records.

SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID );

SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price = 22);