-- Retrieve departments that have an average salary greater than the overall average salary of the company.
select d.department_name, avg(e.emp_salary) as average_department_salary from employees e
join departments d on e.department_id = d.department_id
group by d.department_name
having avg(e.emp_salary)>(
	select avg(emp_salary) as average_salary from employees
)