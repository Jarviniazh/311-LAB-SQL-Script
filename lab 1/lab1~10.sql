SELECT job_id, first_name, last_name
FROM employees
WHERE first_name like '%e%' OR first_name like '%E%';