-- Create a view that only shows employees who have been with the company for more than 5 years.
create view EMP_WORKING_DURATION as
select * from employees
where datediff(curdate(),hire_date)>365*5;

select * from EMP_WORKING_DURATION;