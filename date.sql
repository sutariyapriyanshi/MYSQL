-- dates 
USE customer;

-- Date Data Types
-- MySQL comes with the following data types for storing a date or a date/time value in the database:
/* 
DATE - format YYYY-MM-DD
DATETIME - format: YYYY-MM-DD HH:MI:SS
TIMESTAMP - format: YYYY-MM-DD HH:MI:SS
YEAR - format YYYY or YY 
Note: The date data type are set for a column when you create a new table in your database */

SELECT * FROM Orders WHERE OrderDate='1996-07-05';
-- Two dates can easily be compared if there is no time component involved
-- To keep your queries simple and easy to maintain, do not use time-components in your dates, unless you have to