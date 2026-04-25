-- ORDER BY CLAUSE
-- to sort in ascending (ASC) or descending (DESC) order

use instagram;

SELECT name , age , followers FROM user
ORDER BY followers ASC;

SELECT name , age , followers FROM user
ORDER BY followers DESC;

SELECT name , age , followers FROM user
ORDER BY followers;         -- by default ascending order