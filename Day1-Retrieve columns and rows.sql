-- Retrieve all columns and rows from a table called employees.
create database CULT;
use CULT;
create table employees(
	emp_id int,
    emp_name varchar(255)
);
show tables;
Insert into employees (emp_id, emp_name)
 values 
 (1, "Sanjana Koirala"),
 (2, "Abhash Khadka"),
 (3, "Chitiz Vaidya"),
 (4, "Shikshya Shrestha"), 
 (5, "Srijana Thapa"),
 (6,"Samundra Adhikari")
 
 select * from employees;