-- GROUPBY CLAUSE
-- group rows that have the same values into summary rows
-- It collects data from multiple records and group the result by one or more column
-- Generally we use groupby with some aggregation function

use instagram;

SELECT age , count(id) FROM user
GROUP BY age ;

SELECT age , max(followers)  FROM user
GROUP BY age ;