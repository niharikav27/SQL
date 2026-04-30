-- FULL OUTER JOIN
-- FULL OUTER JOIN returns all rows when there is a match in either the left or right table
--  If there is no match, the result will include NULL for the missing side of the table.

USE shop;

SELECT *
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
UNION
SELECT *
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;