CREATE DATABASE IF NOT EXISTS instagram;

USE instagram;

CREATE TABLE user(
   id INT,
   name VARCHAR(30) NOT NULL,
   email VARCHAR(50) UNIQUE,
   age INT,
   followers INT DEFAULT 0,
   following INT,
   CONSTRAINT CHECK (age >= 15)
);