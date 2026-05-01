-- STORED PROCEDURES
-- Predefined set of SQL statements that you can save in the database and execute whenever needed

DELIMITER $$

CREATE PROCEDURE check_balance(IN acc_id INT)
BEGIN
    SELECT balance
    FROM accounts
    WHERE account_id = acc_id;
END $$

DELIMITER ;

CALL check_balance(1);

DROP PROCEDURE IF EXISTS check_balance;

DELIMITER $$

CREATE PROCEDURE check_balance(IN acc_id INT , OUT bal DECIMAL(10,2))
BEGIN
    SELECT balance INTO bal
    FROM accounts
    WHERE account_id = acc_id;
END $$

DELIMITER ;

CALL check_balance(1,@balance);
SELECT @balance;