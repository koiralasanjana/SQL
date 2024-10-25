-- Create a view that shows employee names and their respective department names.
create view EMP_AND_DEPARTMENT as
select emp_name, d.department_name from employees e
join departments d on e.department_id = d.department_id;

select * from EMP_AND_DEPARTMENT;