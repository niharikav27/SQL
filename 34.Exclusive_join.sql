-- LEFT EXCLUSIVE JOIN
-- An Exclusive Left Join(Left Anti-Join) returns only the records from the left table that have no matching records in the right table

SELECT *
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;

-- RIGHT EXCLUSIVE JOIN
-- An Exclusive Right Join(Right Anti-Join) returns only the records from the right table that have no matching records in the left table

SELECT *
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;