-- Self Join
-- A self join is a regular join, but the table is joined with itself.

-- Self Join Syntax
/* 
SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition; */ 

-- T1 and T2 are different table aliases for the same table.

SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Cust A, Cust B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;