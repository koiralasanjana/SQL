-- Retrieve employees who earn more than the highest-paid employee in the "Finance" department.
select e.emp_name, e.emp_salary, d.department_name from employees e
join departments d on e.department_id = d.department_id
where e.emp_salary>(
	select max(emp_salary) from employees e2
    join departments d2 on e2.department_id = d2.department_id
    where d2.department_name="finance"
)