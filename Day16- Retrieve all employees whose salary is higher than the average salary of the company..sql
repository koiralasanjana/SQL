 -- Retrieve all employees whose salary is higher than the average salary of the company.
 
 select emp_name, emp_salary from employees
 where emp_salary > 
 (select avg(emp_salary) from employees)
 