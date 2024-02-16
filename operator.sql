-- SQL Operators

USE Customer;
SELECT * FROM cust;
-- Arithmetic Operators

SELECT 30 + 20;
SELECT 30 - 20;
SELECT 30 * 20;
SELECT 30 / 10;
SELECT 17 % 5;

-- Bitwise Operators
/* &	Bitwise AND
|	Bitwise OR
^	Bitwise exclusive OR */

-- Comparison Operators
SELECT * FROM Products WHERE Price = 18;
SELECT * FROM Products WHERE Price > 30;
SELECT * FROM Products WHERE Price < 30;
SELECT * FROM Products WHERE Price >= 30;
SELECT * FROM Products WHERE Price <= 30;
SELECT * FROM Products WHERE Price <> 18;

-- compound Operators
/* +=	Add equals
-=	Subtract equals
*=	Multiply equals
/=	Divide equals
%=	Modulo equals
&=	Bitwise AND equals
^-=	Bitwise exclusive equals
|*=	Bitwise OR equals */

-- Logical Operators
-- ALL
SELECT CategoryName
FROM Categories
WHERE CategoryID = ALL
  (SELECT CategoryID
  FROM Products
  WHERE Price < 50);

-- AND
SELECT * FROM Cust WHERE City = 'London' AND Country = 'UK';

-- ANY
SELECT * FROM Products
WHERE Price > ANY (SELECT Price FROM Products WHERE Price > 50);

-- BETWEEN
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 30;

-- EXISTS
SELECT CategoryName
FROM Categories
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.CategoryID = Categories.CategoryID AND Price < 50);

-- IN
SELECT * FROM Cust
WHERE City IN ('Paris','London');

-- LIKE
SELECT * FROM Cust
WHERE City LIKE 'A%';

-- NOT
SELECT * FROM Cust
WHERE City NOT LIKE 'A%';

-- OR
SELECT * FROM Cust WHERE City = 'London' OR Country = 'UK';

-- SOME
SELECT * FROM Products
WHERE Price > SOME (SELECT Price FROM Products WHERE Price > 20);