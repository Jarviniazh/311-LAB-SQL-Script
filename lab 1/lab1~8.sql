SELECT last_name, job_id, salary
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) < 1998
ORDER BY hire_date DESC;