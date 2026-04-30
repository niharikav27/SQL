-- LEFT JOIN
-- LEFT JOIN (or LEFT OUTER JOIN) retrieves all records from the left table and the matching records from the right table

USE shop;

SELECT *
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;