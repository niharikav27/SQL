-- in the college database create table student to store their roll no,name,city and marks

USE college;

CREATE TABLE student(
  rollno INT PRIMARY KEY,
  name 	VARCHAR(50),
  city VARCHAR(50),
  marks INT
);

INSERT INTO student
(rollno , name , city , marks)
VALUES
(101,"adam","delhi",76),
(108,"bob","mumbai",65),
(124,"casey","pune",94),
(112,"duke","pune",80);

SELECT * FROM student;

-- select all student who scored 75+
SELECT * FROM student
WHERE marks > 75;

-- find names of all cities where students are from
SELECT DISTINCT city FROM student;

SELECT city FROM student
GROUP BY city;

-- find the maximum marks of student from each city
SELECT city , MAX(marks) FROM student
GROUP BY city;

-- find the average marks of the class
SELECT AVG(marks) FROM student;

-- add a new column name grade and assign values as
-- marks>80 , grade = O 
-- marks 70-80 , grade = A 
-- marks 60-70 , garde = B

ALTER TABLE  student
ADD COLUMN grade VARCHAR(2);

SET SQL_SAFE_UPDATES =0;
UPDATE student
SET grade = "O"
WHERE marks >= 80;

UPDATE student
SET grade = "A"
WHERE marks >= 70 AND marks < 80;

UPDATE student
SET grade = "B"
WHERE marks >= 60 AND marks < 70;