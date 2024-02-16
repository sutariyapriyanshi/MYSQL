-- NULL Values

-- A field with a NULL value is a field with no value.
-- If a field in a table is optional, it is possible to insert a new record or update a record without adding a value to this field. 
-- Then, the field will be saved with a NULL value.
-- A NULL value is different from a zero value or a field that contains spaces. A field with a NULL value is one that has been left blank during record creation!

-- It is not possible to test for NULL values with comparison operators, such as =, <, or <>.
-- The IS NULL operator is used to test for empty values (NULL values).
-- Always use IS NULL to look for NULL values.
SELECT * FROM Cust WHERE Addresss IS NULL;

-- The IS NOT NULL operator is used to test for non-empty values (NOT NULL values).
SELECT * FROM Cust WHERE Addresss IS NOT NULL;