
CREATE DATABASE IF NOT EXISTS instagram;

USE instagram;

CREATE TABLE user(
   id INT,
   name VARCHAR(30),
   email VARCHAR(50),
   age INT,
   followers INT,
   following INT
);   