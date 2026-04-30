-- SUB-QUERY
-- A subquery ot Inner query or a nested query is a query within another sql query.
-- It involves 2 select statements

-- WITH WHERE

SELECT *
FROM orders
WHERE amount >(
     SELECT AVG(amount)
     FROM orders
);

-- 	WITH SELECT

SELECT name , (
    SELECT COUNT(*)
    FROM orders o
    WHERE o.customer_id = c.customer_id
) AS order_count
FROM customers c;

-- 	WITH FROM 

SELECT summary.customer_id , summary.avg_amount
FROM(
      SELECT customer_id , AVG(amount) AS avg_amount
	  FROM orders
      GROUP BY customer_id
) AS summary;