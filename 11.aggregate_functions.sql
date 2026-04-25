-- AGGREGATE FUNCTIONS
-- Aggregate functions performs a calculation on a set of values and return a single values
-- some aggregate functions are MIN(),MAX(),AVG(),SUM(),COUNT()

use instagram;

-- MAX()
SELECT MAX(followers) FROM user;

-- MIN() 
SELECT MIN(age) FROM user;

-- COUNT()
SELECT COUNT(age) FROM user
WHERE age < 18;

-- AVG()
SELECT AVG(age) FROM user;

-- SUM()
SELECT SUM(following) FROM user;
