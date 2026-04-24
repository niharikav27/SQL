USE instagram;

SELECT * FROM user
WHERE followers >= 200;

SELECT name,followers FROM user
WHERE followers >= 100;

SELECT name,followers,following FROM user
WHERE age>18;

-- OPERATORS

-- AND
SELECT name ,followers,following FROM user 
WHERE age>15 AND followers >100;

-- OR
SELECT name, age ,followers FROM user 
WHERE age>18 OR followers >200;

-- BETWEEN
SELECT name , followers FROM user
WHERE followers BETWEEN 100 AND 200;

-- IN
SELECT name , followers ,email FROM user
WHERE email IN ("david@gmail.com","colin@gmail.com","abc@gmail.com");

SELECT name , age ,email FROM user
WHERE age IN (19,21);

-- NOT IN 
SELECT name , age ,email FROM user
WHERE age NOT IN (19,21);

