-- LIKE Operator
/* The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
There are two wildcards often used in conjunction with the LIKE operator:
1. The percent sign (%) represents zero, one, or multiple characters
2. The underscore sign (_) represents one, single character */

-- The percent sign and the underscore can also be used in combinations!
-- also combine any number of conditions using AND or OR operators.

/*  WHERE CustomerName LIKE 'a%'	Finds any values that start with "a"
	WHERE CustomerName LIKE '%a'	Finds any values that end with "a"
	WHERE CustomerName LIKE '%or%'	Finds any values that have "or" in any position
	WHERE CustomerName LIKE '_r%'	Finds any values that have "r" in the second position
	WHERE CustomerName LIKE 'a_%'	Finds any values that start with "a" and are at least 2 characters in length
	WHERE CustomerName LIKE 'a__%'	Finds any values that start with "a" and are at least 3 characters in length
	WHERE ContactName LIKE 'a%o'	Finds any values that start with "a" and ends with "o" */

SELECT * FROM Cust WHERE CustomerName LIKE 'a%';
SELECT * FROM Cust WHERE CustomerName NOT LIKE 'a%';