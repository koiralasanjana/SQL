 -- Count the number of employees in each department.
 
select d.department_name, count(*) as emp_count 
from employees e
join departments d on e.department_id = d.department_id
group by d.department_name;