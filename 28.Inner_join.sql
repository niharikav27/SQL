USE shop;

-- INNER JOIN
-- An INNER JOIN combines rows from two or more tables only when they share a matching value in a specified column

SELECT * FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

SELECT c.customer_id , o.order_id , c.name FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;
