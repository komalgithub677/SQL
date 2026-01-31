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
















