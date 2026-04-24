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

INSERT INTO user
(id,name,email,age,followers,following)
VALUES
(1,"Aman","aman@gmail.com",16,101,162),
(2,"Bob","bob@yahoo.com",19,34,23),
(3,"Colin","colin@gmail.com",43,450,230),
(4,"David","david@gmail.com",21,230,200);

INSERT INTO user
(id,name,email,age,followers,following)
VALUES
(5,"Elina","elina@yahoo.com",16,532,43);

CREATE TABLE posts(
    id INT,
    content VARCHAR(100),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES user(id)
);

INSERT INTO posts
(id,content,user_id)
VALUES
(101,"Hello everyone",3),
(102,"beautiful day",1),
(103,"Good morning",4);

