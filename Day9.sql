-- Retrieve all employees who do not have a manager assigned (using LEFT JOIN).

select e.emp_name as employee, m.emp_name as manager
from employees e
left join employees m on e.manager_id = m.emp_id
where e.manager_id is null