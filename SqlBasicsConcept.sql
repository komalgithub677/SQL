DROP DATABASE IF EXISTS batch_1299;
CREATE DATABASE batch_1299;

-- Use database
USE batch_1299;

-- Create table with salary included
CREATE TABLE empData (
  emp_id INT PRIMARY KEY,
  name VARCHAR(30),
  city VARCHAR(30),
  mobNo BIGINT,
  state VARCHAR(50),
  salary INT
);

-- Describe table
DESC empData;

-- Insert data with salary
INSERT INTO empData (emp_id, name, city, mobNo, state, salary)
VALUES
(1, "Komal",   "Pune",        9373937250, "Maharashtra", 45000),
(2, "Monika",  "Ahmednagar",  8900038382, "Maharashtra", 42000),
(3, "Amit",    "Nashik",      9012345678, "Maharashtra", 50000),
(4, "Priya",   "Kolhapur",    8899776655, "Karnataka",   48000),
(5, "Rohit",   "Solapur",     9988776654, "Gujarat",     52000),
(6, "Neha",    "Satara",      9090909090, "Rajasthan",   40000),
(7, "Sanket",  "Aurangabad",  9345678123, "Punjab",      46000),
(8, "Pooja",   "Jalgaon",     9765432109, "Madhya Pradesh", 44000),
(9, "Karan",   "Thane",       9112233445, "Maharashtra", 60000),
(10,"Anjali",  "Latur",       9223344556, "Maharashtra", 47000);

-- View data
SELECT * FROM empData;

alter table empData add country varchar(30);

select * from empData;

-- drop table

alter table empData drop column country;

-- rename column

alter table  empData rename column name  to emp_name;


-- order by
select * from empData
order by salary asc;

select * from empData limit 3;

select * from empData limit 10;
select * from empData limit 9 offset 4;

-- comments
-- single line comments - --
-- multiline comments /* */

-- Aliases - temperary name

select city as employeeCity from empData;

select * from empData;

-- aggregate functions
-- minimum
-- maximum

select min(salary) from empData;
select * from empData;
select  max(salary) from empData;
select count(salary) from empData;
select avg(salary) from empData;
select sum(salary) from empData;


-- 3. ALTER TABLE

-- Concept: Modify table structure

-- Add a column department to empData.
alter table empData add column department varchar(50);
select * from empData;

-- Drop the column state from empData.
alter table empdata drop column state;

-- Rename column emp_name to employee_name.
alter table empData rename column emp_name to employee_name;

-- Change datatype of salary to BIGINT.
alter table empData modify salary BIGINT;

-- Add a column country with default value India.
alter table empData add column country varchar(50) default ('India');

-- Drop multiple columns from a table.
alter table empData drop column country ;

-- Rename the table empData to employee_data.
 rename table  empData to employee_data;
 select * from employee_data;

-- Add a column after city.
alter table employee_data add column address varchar(50) 
after city;


-- What is the difference between ALTER ADD and ALTER MODIFY?
-- Used to change the structure of a table
-- what you can do with the alter 
-- add column ,rename column , drop column ,rename table , modify the column data type
-- Add or drop constraints
-- alter modify
-- alter modify is used to specifically change the existing column definitions
-- Change datatype
-- Change column size
-- Add/remove constraints (NOT NULL, DEFAULT, etc.)




-- Can ALTER TABLE be rolled back?
-- DDL statements perform implicit COMMIT
-- They permanently change table structure
-- so the alter table cannot be back the data 
-- ROLLBACK works only with DML (INSERT, UPDATE, DELETE)

-- 🔹 4. SELECT (Basic Queries)

-- Concept: Retrieving data

-- Display all records from empData.
select * from employee_data;

-- Display only emp_name and salary.
select employee_name ,salary
from employee_data;

-- Display employees from Pune.
select employee_name , city
from employee_data
where city = "Pune";

-- Display employees with salary greater than 45000.
select employee_name  , salary 
from employee_data 
where salary>45000;

-- Display unique cities from the table.

-- Display employees whose city starts with P.
select employee_name 
from employee_data
where city like 'P%';

-- Display employees not from Maharashtra.
select employee_name ,city
from employee_data
where city <> 'Maharashtra';

-- Display employees with salary between 40000 and 50000.
select employee_name , salary
from employee_data
where salary between 40000 AND 50000;

-- Display employee names in uppercase.
select employee_name
from employee_data
where employee_name = upper(employee_name);


-- Display total number of employees.
select count(*) as employee_count
from employee_data;

-- 🔹 5. ORDER BY

-- Concept: Sorting data

-- Sort employees by salary in ascending order.
select employee_name ,salary 
from employee_data
order by salary asc;


-- Sort employees by salary in descending order.
select employee_name , salary
from employee_data
order by salary desc;

-- Sort employees by city alphabetically.
select employee_name ,city
from employee_data
order by city;

-- Sort employees by state and salary.
select employee_name ,salary
from employee_data
order by employee_name , salary ;

-- Sort employees by name in descending order.
select employee_name from 
employee_data
order by employee_name  desc;

-- Sort employees with highest salary first.
select employee_name , salary
from employee_data
order by salary desc;

-- What is the default sort order in SQL?
-- default sort order in the sql is asceding

-- Can ORDER BY use column position?
-- no order by cannot use the coulmn position

-- Sort employees by salary, then by city.
select employee_name , salary ,city
from employee_data
order by salary , city;

-- Difference between ORDER BY ASC and DESC.
-- order by asceding sort the records in the ascending order
-- order by descending sort the records in the descending order

-- 🔹 6. LIMIT & OFFSET

-- Concept: Pagination & row limits

-- Display first 3 records from empData.
select * from 
employee_data
limit 3;

-- Display top 5 highest paid employees.
select employee_name ,  salary
from employee_data
order by salary desc
limit 5;

-- Display 4 records starting from 5th row.
select * from employee_data
limit 4 offset 5;

-- Display last 3 records (logic-based).
select * from employee_data 
order by emp_id desc
limit 3;

select * from employee_data;

-- Use LIMIT without OFFSET.
-- when we use the limit without offset then the 

-- Use OFFSET without ORDER BY—what happens?

-- Display employees from row 6 to row 10.

-- Difference between LIMIT 5, 3 and LIMIT 3 OFFSET 5.

-- Display second highest salary using LIMIT.

-- Why is ORDER BY important with LIMIT?

-- 🔹 7. ALIASES

-- Concept: Temporary names using AS

-- Display city as employeeCity.

-- Display salary as monthly_salary.

-- Display emp_name as Employee Name.

-- Use alias without AS.

-- Can aliases be used in WHERE clause?

-- Use alias with aggregate functions.

-- Display salary * 12 as annual_salary.

-- Difference between column alias and table alias.

-- Use alias in ORDER BY.

-- Why are aliases useful?

-- 🔹 8. AGGREGATE FUNCTIONS

-- Concept: MIN, MAX, COUNT, AVG, SUM

-- Find the minimum salary.

-- Find the maximum salary.

-- Count total number of employees.

-- Find average salary of employees.

-- Find total salary paid to all employees.

-- Count employees from Maharashtra.

-- Find highest salary in Pune.

-- Find average salary of employees earning above 45000.

-- Difference between COUNT(*) and COUNT(salary).

-- Can aggregate functions be used with WHERE?

-- 🔹 9. COMMENTS

-- Concept: SQL comments

-- Write a single-line comment in SQL.

-- Write a multi-line comment in SQL.

-- Comment out an INSERT statement.

-- Can comments affect query execution?

-- Why are comments important?

-- Comment an entire block of SQL code.

-- Use comments to explain a query.

-- Are comments stored in database?

-- Can comments cause syntax errors?

-- Difference between -- and /* */.














