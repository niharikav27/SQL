--  create a table employee and insert empid,firstname,lastname,department,salary,hiredate

CREATE DATABASE IF NOT EXISTS company;

USE company;

CREATE TABLE Employee(
  EmpID INT PRIMARY KEY,
  FirstName VARCHAR(20),
  LastName VARCHAR(20),
  Department VARCHAR(20),
  Salary INT,
  HireDate DATE
);

INSERT INTO Employee
(EmpID, FirstName, LastName, Department, Salary, HireDate)
VALUES
(101,"Alice","Johnson","IT",6500,"2020-03-15"),
(102,"Mark","Rivera","HR",4800,"2019-07-22"),
(103,"Sophia","Lee","Finance",7200,"2021-01-10"),
(104,"Daniel","Kim","IT",5800,"2018-11-05"),
(105,"Emma","Brown","Marketing",5300,"2022-04-18"),
(106,"Liam","Patel","Finance",6900,"2020-09-29"),
(107,"Olivia","Garcia","HR",4600,"2017-06-30"),
(108,"Noah","Thompson","IT",7500,"2023-02-12"),
(109,"Ava","Martinez","Marketing",5100,"2019-12-02"),
(110,"Ethan","Davis","Finance",8000,"2016-05-14");

-- 1. Write a query to display every employee and all their data
SELECT * FROM Employee;

-- 2. List only the FirstName,LastName and Salary of every employee
SELECT FirstName, LastName, Salary FROM Employee;

-- 3. Show all employees who work in IT department
SELECT * FROM Employee
WHERE Department = 'IT';

-- 4. Retrieve employees with a salary greater than 6000
SELECT * FROM Employee
WHERE Salary > 6000;

-- 5. List all employees ordered by HireDate from newest to oldest
SELECT * FROM Employee
ORDER BY HireDate DESC;

-- 6. Show a list of all unique departments present in the table
SELECT Department FROM Employee
GROUP BY Department;

-- 7. Find Employees whose first name starts with 'A'
SELECT * FROM Employee
WHERE FirstName LIKE 'A%' ;

-- 8. Show employees whose salaries are between 4000 and 7000
SELECT * FROM Employee
WHERE Salary BETWEEN 4000 AND 7000;

-- 9. Find the average salary of all employees
SELECT AVG(Salary) FROM Employee;

-- 10. List each department along with the number of employees
--      but only include departments with more than 2 employees
SELECT Department, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY Department
HAVING COUNT(*) > 2;

-- 11. List average salary department wise
SELECT Department, AVG(Salary) AS avgsalary
FROM Employee
GROUP BY Department;

