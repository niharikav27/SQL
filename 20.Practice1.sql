-- create a database college and in it create a table named teacher and store their id name subject salary

CREATE DATABASE IF NOT EXISTS college;

USE college;

CREATE TABLE teacher(
   id INT PRIMARY KEY,
   name VARCHAR(50),
   subject VARCHAR(50),
   salary INT
);   

INSERT INTO teacher
(id,name,subject,salary)
VALUES
(23,"ajay","maths",50000),
(47,"bharat","english",60000),
(18,"chetan","chemistry",45000),
(9,"divya","physics",75000);

SELECT * FROM teacher;

-- select teachers whose salary is more than 55000
SELECT * FROM teacher
WHERE salary > 55000;

-- rename salary column or teacher table to ctc
ALTER TABLE teacher
CHANGE salary ctc INT ;

-- update salary of teacher by giving increment of 25%
UPDATE teacher
SET ctc = ctc + ctc * 0.25;

-- add city column to the teacher table and set default value as gurgaon
ALTER TABLE teacher
ADD COLUMN city VARCHAR(20) DEFAULT "gurgaon";
   
-- delete ctc column from tecaher table  
ALTER TABLE teacher
DROP COLUMN ctc; 

