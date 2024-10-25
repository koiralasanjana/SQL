-- Retrieve all employees and order them by department and then by salary within each department.
select * from employees e
join departments d on e.department_id = d.department_id
order by d.department_name, e.emp_salary;