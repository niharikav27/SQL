-- SELF JOIN
-- A Self Join is a regular SQL join where a table is joined with itself.
--  It is primarily used to compare rows within the same table

USE shop;

SELECT *
FROM customers as A
JOIN customers as B
ON A.customer_id = B.customer_id; 