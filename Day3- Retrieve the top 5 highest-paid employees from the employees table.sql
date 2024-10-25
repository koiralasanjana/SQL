-- Retrieve the top 5 highest-paid employees from the employees table.

select emp_id, emp_salary from employees
order by emp_salary desc limit 5;