-- Find the average salary of employees in each department.
select d.department_name, avg(e.emp_salary) as average_salary
from employees e
join departments d on e.department_id = d.department_id
group by d.department_name;