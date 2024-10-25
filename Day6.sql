-- Retrieve employees whose salary is between $40,000 and $60,000, and who work in either the "HR" or "IT" department.

select emp_id, emp_name, emp_salary, d.department_name from employees e
join departments d on e.department_id = d.department_id
where d.department_name = "HR" or d.department_name = "IT" and 
emp_salary between 40000 and 60000;