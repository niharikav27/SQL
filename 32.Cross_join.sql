-- CROSS JOIN
-- A CROSS JOIN is a type of join in SQL that returns the Cartesian product of two tables.
--  It pairs every single row from the first table with every single row from the second table. 

USE shop;

SELECT * 
FROM customers
CROSS JOIN orders;