-- autoincrement
-- unique key 
-- unique value accepted
-- null value allowed
-- duplicate values cannot be accepted

-- primary key
-- unique value accepted
-- null value not allowed
-- duplicate values cannot be accepted

-- NOTNULL: 
 
 use batch_1299;
 
 create table customer (
       custID int Auto_Increment primary key ,
       name varchar(50),
       mobile bigInt UNIQUE ,
       email varchar(70) UNIQUE,
       city varchar(45) UNIQUE 
 );
 
 DESC customer;
 
 -- alter table customer modify mobNo NOT NULL;
 
INSERT INTO customer (CUSTID, name, mobile, email, city)
VALUES
(1, 'Amit Sharma', 9876543210, 'amit.sharma@gmail.com', 'Mumbai'),
(2, 'Priya Verma', 9123456780, 'priya.verma@gmail.com', 'Pune'),
(3, 'Rahul Patil', 9988776655, 'rahul.patil@gmail.com', 'Nagpur'),
(4, 'Sneha Kulkarni', 9871234567, 'sneha.k@gmail.com', 'Nashik'),
(5, 'Rohit Deshmukh', 9765432109, 'rohit.d@gmail.com', 'Aurangabad'),
(6, 'Neha Joshi', 9898989898, 'neha.joshi@gmail.com', 'Kolhapur'),
(7, 'Kunal Mehta', 9001122334, 'kunal.mehta@gmail.com', 'Ahmedabad'),
(8, 'Anjali Singh', 9112233445, 'anjali.singh@gmail.com', 'Delhi'),
(9, 'Vikas Rao', 9223344556, 'vikas.rao@gmail.com', 'Bengaluru'),
(10, 'Pooja Nair', 9334455667, 'pooja.nair@gmail.com', 'Kochi');
 
 select * from customer;
 
 
 select * from empData;
 
 select * from empData where emp_name LIKE 'r_';
 
  select * from empData where emp_name LIKE 'K_ _';
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 






