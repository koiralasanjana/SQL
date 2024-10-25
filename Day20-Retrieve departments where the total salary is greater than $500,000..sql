-- Retrieve departments where the total salary is greater than $130,000.
select d.department_name, sum(e.emp_salary) from employees e
join departments d on e.department_id = d.department_id
group by d.department_name
having sum(e.emp_salary)>130000;
