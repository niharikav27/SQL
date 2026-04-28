-- AUTOCOMMIT 
-- In sql every query statement is considered as transacton and it commit changes automatically,
-- when the query is successfully completed

SELECT @@autocommit;      -- it tells the current state of commit if 1 means autocommit is enabled else disabled

-- DISABLE AUTOCOMMIT
SET autocommit = 0;

-- ENABLE AUTOCOMMIT
SET autocommit = 1;