-- RIGHT JOIN
-- RIGHT JOIN (or RIGHT OUTER JOIN) retrieves all records from the right table and the matching records from the left table

USE shop;

SELECT *
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;