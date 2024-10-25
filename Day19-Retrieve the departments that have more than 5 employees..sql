-- Retrieve the departments that have more than 2 employees.
select d.department_name from employees e
join departments d on e.department_id = d.department_id
group by d.department_name
having count(e.emp_id)>2
