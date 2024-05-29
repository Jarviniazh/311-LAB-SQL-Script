SELECT employee_id, last_name, salary
FROM employees
WHERE salary BETWEEN 8000 and 15000
ORDER BY salary DESC, employee_id;