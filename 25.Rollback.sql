-- ROLLBACK
-- undo changes
-- it only rollback uncommited changes

START TRANSACTION;

UPDATE accounts SET balance = balance - 50 WHERE id = 1;
UPDATE accounts SET balance = balance + 50 WHERE id = 2;

COMMIT;               -- this transaction cannot rollback since its committed

START TRANSACTION;

UPDATE accounts SET balance = balance + 100 WHERE id = 1;
UPDATE accounts SET balance = balance - 100 WHERE id = 3;

ROLLBACK;

SELECT * FROM accounts;