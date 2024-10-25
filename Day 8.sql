-- Retrieve a list of employees and their managers' names using a self-join.
SELECT e.emp_name as employee, m.emp_name AS manager
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.emp_id;