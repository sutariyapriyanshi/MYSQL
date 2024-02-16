-- Wildcard Characters
-- A wildcard character is used to substitute one or more characters in a string.
-- Wildcard characters are used with the LIKE operator. The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

--  %	 Represents zero or more characters
--  _	 Represents a single character

-- Using the % Wildcard
SELECT * FROM Cust WHERE City LIKE 'ber%';
SELECT * FROM Cust WHERE City LIKE '%es%';

-- Using the _ Wildcard
SELECT * FROM Cust WHERE City LIKE '_ondon';
SELECT * FROM Cust WHERE City LIKE 'L_n_on';