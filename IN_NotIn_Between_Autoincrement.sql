use batch_1299;
show tables;

select * from employee_data;
-- 🔹 LIKE OPERATOR – Practice Questions

-- Use table: empData

-- Display all employees whose name starts with ‘K’.
select * from 
employee_data 
where employee_name like 'k%';

-- Find employees whose name ends with ‘a’.
select * from employee_data
where employee_name like '%a';

-- Display employees whose name contains ‘an’ anywhere.
select * from employee_data
where employee_name like  '%an%';

-- Find employees whose city starts with ‘S’.
select * from employee_data
where city like 's%';

-- Display employees whose city ends with ‘e’.
select * from employee_data
where city like '%e';

-- Find employees whose name has ‘o’ as the second character.
select * from
employee_data 
where employee_name like '_o%';

-- Display employees whose name starts with ‘P’ and has at least 4 characters.
select * from employee_data 
where employee_name like 'P___%';

-- Find employees whose state contains the word ‘Pradesh’.
select * from employee_data
where city like '%Pradesh%';

-- Display employees whose name starts with ‘A’ and ends with ‘t’.
select * from employee_data
where employee_name like 'a%_t%';

-- Find employees whose city has exactly 6 characters.
select * from employee_data
where city like '______';

-- 🔹 IN OPERATOR – Practice Questions

-- Display employees who belong to Pune or Satara.
select * from employee_data
where city In ('Pune' , 'Satara');

-- Find employees whose city is NOT IN Pune or satara.
select * from employee_data
where city not in ('Pune' ,'Satara');

-- Display employees from Pune, Nashik, or Thane.
select * from employee_data
where city in( 'Pune' , 'Nashik', 'Thane');

-- Find employees whose name is IN (‘Komal’, ‘Priya’, ‘Neha’).
select * from employee_data 
where employee_name in ('Komal' ,'Priya' ,'Neha');

-- Display employees whose city is NOT IN (‘Pune’, ‘Solapur’).
select * from employee_data
where city not in ('Pune' ,'Solapur');

-- Find employees whose salary is IN (45000, 50000, 60000).
select * from employee_data
where salary in(45000, 50000, 60000);

-- Display employees from Pune ,satara.
select * from employee_data
where city in ('Pune' , 'Satara');


-- Find employees whose name is NOT IN (‘Amit’, ‘Rohit’).
select * from employee_data where 
employee_name not in('Amit' ,'Rohit');

-- 🔹 BETWEEN OPERATOR – Practice Questions

-- Display employees whose salary is between 40000 and 50000.
select * from employee_data
where salary between 40000 And 50000;

-- Find employees whose salary is NOT between 45000 and 55000.
select * from employee_data
where salary not between 45000 and 55000;

-- Display employees whose emp_id is between 3 and 8.
select * from employee_data
where emp_id between 3 and 8;

-- Find employees whose salary is between 42000 and 48000.
select * from employee_data
where salary between 42000 and 48000;

-- Display employees whose emp_id is NOT between 5 and 9.
select * from employee_data
where emp_id not between 5 and 9;

-- Find employees earning mid-range salaries (45000–52000).
select * from employee_data
where salary between 45000 and 52000;

-- 🔹 COMBINATION (LIKE + IN + BETWEEN)

-- Display employees whose name starts with ‘K’ and salary is above 50000.
select * from employee_data where 
employee_name  like 'k%' and salary >50000;

-- Find employees from Pune whose salary is between 45000 and 60000.
select * from employee_data
where city = 'Pune' and salary between 45000 and 60000;

-- Display employees whose city starts with ‘S’ and city IN Pune or Satara.
select * from employee_data
where city  like 's%' and  city in ('Pune' , 'Satara');

-- Find employees whose name contains ‘a’ and salary between 40000 and 48000.
select * from employee_data
where employee_name like '%a%' and salary between 40000 and 48000;

-- Display employees whose ciyt is NOT IN (‘Pune’) and salary above 45000.
select * from employee_data
where city not in ('Pune' ) and salary > 45000;

-- 🔹 AUTO_INCREMENT / UNIQUE / DATE – Conceptual Questions

-- What is AUTO_INCREMENT? Why is it mostly used with PRIMARY KEY?
-- autoincrement is used when we haved increment the count of values automatically when new records get added
-- this is basically used for the uniques records because it is incrementing the count automatically by 1
-- and not allowing the duplicate values
