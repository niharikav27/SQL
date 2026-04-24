-- LIMIT CLAUSE
-- sets sn upper limit on number of rows (tuples) to be returned

use instagram;

SELECT * FROM user 
LIMIT 3;               -- GIVES ONLY TWO TUPLES

SELECT name , age , email FROM user
WHERE age = 16
LIMIT 1;