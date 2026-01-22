create database information;
use information;

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);
INSERT INTO Departments VALUES
(1, 'IT', 'Pune'),
(2, 'HR', 'Mumbai'),
(3, 'Finance', 'Delhi'),
(4, 'Sales', 'Bangalore');

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    hire_date DATE,
    dept_id INT,
    gender CHAR(1),
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

INSERT INTO Employees VALUES
(101, 'Amit', 50000, '2021-03-15', 1, 'M'),
(102, 'Neha', 42000, '2020-07-10', 2, 'F'),
(103, 'Ravi', 60000, '2019-01-20', 1, 'M'),
(104, 'Priya', 38000, '2022-11-05', 3, 'F'),
(105, 'Anil', 45000, '2021-06-18', 4, 'M'),
(106, 'Sneha', 52000, '2023-02-01', 1, 'F');

select * from departments;
select * from employees;

-- Display all records from the Employees table.
select * from employees;

-- Display employee names and salaries.
select emp_name ,salary
from employee;

-- Find employees whose salary is greater than 40,000.
select emp_name , salary 
from employees 
where salary>40000;

-- Display employees hired after 2021-01-01.
select date 
from employees
where hired_date >'2021-01-01';

-- Display all records from the departments table.
select * from departments;

-- Display only employee names from the employees table.
select emp_name
from employees;

-- Display employee name and salary.
select emp_name ,salary
from employees;

-- Display department name and location.
select dept_name ,location
from departments;

-- CONCEPT 2: WHERE CLAUSE

-- Display employees whose salary is greater than 40,000.
select emp_name ,emp_id ,salary
from employees
where salary>40000;


-- Display employees whose gender is 'F'.

-- Display employees working in department id 1.
select emp_name ,dept_id
from employees
where dept_id = 1;

-- Display employees hired after 2021-01-01.
select emp_name , hire_date
from employees
where hire_date > '2021-01-01';

-- Display employees whose salary is less than 50,000
select emp_name , salary
from employees
where salary>50000;

-- Display employees whose salary is greater than 40,000 and gender is 'M'.
select emp_name , emp_id
from employees
where salary >40000 AND gender ='M';

-- Display employees working in department 1 or department 2.
select dept_id ,emp_name
from employees
where dept_id =1 or dept_id =2;

-- Display employees who are not working in department 3.
select dept_id , emp_name
from employees
where dept_id<>3;


-- Display female employees hired after 2020-01-01.
select emp_name , gender ,hire_date
from employees
where hire_date > '2020-01-02' AND gender ='F';

-- Display employees whose salary is not equal to 45,000.
select emp_name ,salary
 from employees
where salary <> 45000;

-- CONCEPT 4: LIKE OPERATOR

-- Display employees whose name starts with 'A'.
select emp_name 
from employees
where emp_name like 'A%';

-- Display employees whose name ends with 'a'.
select emp_name
from employees
where emp_name like '%A';

-- Display employees whose name contains 'i'.
select emp_name
from employees
where emp_name like  '%i%';

-- Display departments whose name starts with 'F'.
select dept_name
from departments 
where dept_name like  'F%';

-- Display employees whose name contains 'e'.
select emp_name 
from employees 
where emp_name like '%e%';

-- CONCEPT 5: ORDER BY

-- Display employees ordered by salary (ascending).
select emp_name ,salary 
from employees
order by salary asc ;

-- Display employees ordered by salary (descending).
select emp_name ,salary
from employees
order by salary desc;

-- Display employees ordered by hire date.
select emp_id ,hire_date
from employees 
order by hire_date;

-- Display employees ordered by name.
select emp_name 
from employees
order by emp_name;

-- Display departments ordered by location.
select dept_name
from departments
order by location;

