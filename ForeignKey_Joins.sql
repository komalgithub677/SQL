use batch_1299;

create table departments (
   dept_id int Primary Key , 
   dept_Name varchar(50)
);

desc departments;

insert into departments (dept_id, dept_Name)
values
(101, "Hr"),
(102, "Java Developer");

insert into departments (dept_id, dept_Name)
values
(104, null);

select * from departments;

create table employee(emp_id int , emp_name varchar(30) , dept_id int , 
FOREIGN KEY (dept_id ) references departments (dept_id));

insert into employee (emp_id ,emp_name , dept_id )
values
(1 , "Komal" , 101),
(2 , "Sonali" , 102),
(3 , "Disha" , 103),
(4 , "Snehal" , 104);

alter table employee 
add column manager varchar(30);

insert into employee (manager)
values
("Rohan"),
("Ritesh"),
("Govinda");

set sql_safe_updates = 0;

update employee
set manager = "Rupesh"
where emp_id = 1;

update employee
set manager = "Raj"
where emp_id = 2;

update employee
set manager = "Rakesh"
where emp_id = 3;

update employee
set manager = "Prabhas"
where emp_id = 4;

update employee
set emp_id =5
where manager = "Rohan";

update employee
set emp_id =6
where manager = "Ritesh";

-- We cannot update the child row foreign key constraint fails

select e.emp_name , d.dept_Name
from employee e
inner join departments d
on e.dept_id = d.dept_id;


select * from employee;
select * from departments;

desc employee;



















