use batch_1299;

show tables;

select * from employee_data;
-- Basic UPDATE

SET SQL_SAFE_UPDATES = 0;
-- Update the salary of an employee with emp_id = 101 to 50000.
update employee_Data set salary = 50000
where emp_id = 1;

-- Update the city of employee Komal to Mumbai.
update employee_data set city = 'Pune'
where employee_name ="Komal";

-- Increase the salary of all employees by 10%.
UPDATE employee_data
SET salary = salary * 1.10;

-- Update the city of employee Neha to Pune.
update employee_data set city = "Pune"
where employee_name = "Neha";

-- Update the salary of employee with emp_id = 3 to 60000.
update employee_data 
set salary = 60000
where emp_id = 3;

-- Increase the salary by 5000 for employees working in Satara.
update employee_data 
set salary = 5000
where city = "Satara";

select * from employee_data;

-- Set department as Finance for employee Priya.
update employee_data
set department = "Finance"
where employee_name = "Priya";

-- Update salary to 50000 for employees whose salary is less than 50000.
update employee_data 
set salary = 50000
where salary > 50000;

-- Set city to Mumbai for employees whose department is NULL.
update employee_data
set city = "Mumbai"
where department = "Null";

-- Update mobile number of employee Rohit.
update employee_data 
set mobNo =4657588589
where employee_name ="Rohit";


