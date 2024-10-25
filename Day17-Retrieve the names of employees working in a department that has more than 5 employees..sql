-- Retrieve the names of employees working in a department that has more than 2 employees.
 select e.emp_name, d.department_name 
 from employees e
 join departments d on e.department_id = d.department_id
 where d.department_id in(
 select department_id from employees
 group by department_id
 having count(*)>2
 )
