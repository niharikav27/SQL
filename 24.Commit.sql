-- COMMIT -> USED TO SAVE TRANSACTIONS

CREATE DATABASE bank;

USE bank;

CREATE TABLE accounts(
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(30),
   balance DECIMAL(10,2)
);

INSERT INTO accounts
(name,balance)
VALUES
('Adam',500.00),
('Bob',300.00),
('Casey',700.00);

SELECT * FROM accounts;

-- TRANSACTIONS

START TRANSACTION;

UPDATE accounts SET balance = balance - 50 WHERE id = 1;
UPDATE accounts SET balance = balance + 50 WHERE id = 2;

COMMIT;

SELECT * FROM accounts;


