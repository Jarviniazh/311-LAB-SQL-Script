SELECT last_name, job_id, salary
FROM employees
WHERE (EXTRACT(YEAR FROM hire_date) < 1998)
    AND (salary > 10000)
ORDER BY job_id, salary DESC;