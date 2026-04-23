CREATE DATABASE college;

USE college;

CREATE TABLE student(
	rollno INT,
    name VARCHAR(30),
    age INT
);    

INSERT INTO student
VALUES
(101,"Adam",21),
(102,"Bob",20);

SELECT * FROM student