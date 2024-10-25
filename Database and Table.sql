create database	CULT;
use CULT;

create table departments(
	department_id int primary key not null,
    department_name varchar(100) not null
);

create table employees(
	emp_id int primary key not null,
    emp_name varchar(100) not null,
    emp_salary decimal(10,2) not null,
	hire_date DATE NOT NULL,
    department_id INT,
    manager_id INT,
    foreign key (department_id) references departments(department_id),
    foreign key (manager_id) references employees(emp_id) -- self-referencing
);

create table student();
create table courses();
create table enrollment();

insert into departments(department_id, department_name)
values
	(1, 'Sales'),
    (2, 'HR'),
    (3, 'IT'),
    (4, 'Finance');
    
insert into employees values
	(101, 'Alice', 55000, '2019-04-15', 1, NULL),
    (102, 'Bob', 72000, '2021-07-30', 2, 101),
    (103, 'Charlie', 48000, '2020-01-20', 3, 102),
    (104, 'David', 60000, '2018-10-15', 1, 103),
    (105, 'Eve', 52000, '2021-03-18', 2, 101),
    (106, 'Frank', 83000, '2022-06-01', 3, NULL),
    (107, 'Grace', 59000, '2019-08-22', 4, 104),
    (108, 'Hannah', 47000, '2020-11-10', 1, 102);