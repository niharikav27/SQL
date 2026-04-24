CREATE DATABASE IF NOT EXISTS instagram;

USE instagram;

CREATE TABLE user(
   id INT,
   name VARCHAR(30) NOT NULL,
   email VARCHAR(50) UNIQUE,
   age INT,
   followers INT DEFAULT 0,
   following INT,
   CONSTRAINT CHECK (age >= 15),
   PRIMARY KEY(id)
);
CREATE TABLE posts(
    id INT,
    content VARCHAR(100),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES user(id)
);

