-- Retrieve data of employees and their respective department names from two tables, employees and departments.
select emp_id, emp_name, d.department_name from employees e
join departments d on e.department_id = d.department_id