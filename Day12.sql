-- Retrieve departments where the average salary is greater than $60,000.

select d.department_name, avg(e.emp_salary) as average_salary 
from employees e
join departments d on e.department_id = d.department_id
group by d.department_name
having avg(e.emp_salary) > 60000
