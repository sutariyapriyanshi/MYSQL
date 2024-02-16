-- GROUP BY

/* The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".
The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns. */

SELECT COUNT(CustomerID), Country FROM Cust GROUP BY Country;

-- lists the number of customers in each country, sorted high to low
SELECT COUNT(CustomerID), Country FROM Cust GROUP BY Country ORDER BY COUNT(CustomerID) DESC;

-- GROUP BY With JOIN
SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;