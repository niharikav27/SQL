-- JOINS
-- Used to combinr rows from two or more tables based on related column between them.

CREATE DATABASE shop;
USE shop;

CREATE TABLE customers(
    customer_id INT PRIMARY KEY,
    name VARCHAR(30),
    city VARCHAR(30)
);

INSERT INTO customers
(customer_id , name , city)
VALUES
(1 , 'Alice','Mumbai'),
(2 , 'Bob','Delhi'),
(3 , 'Charlie','Bangalore'),
(4 , 'David','Mumbai');

CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount INT
);

INSERT INTO orders
(order_id , customer_id , amount)
VALUES
(101 , 1 , 500),
(102 , 1 , 900),
(103 , 2 , 300 ),
(104 , 5 , 700);
