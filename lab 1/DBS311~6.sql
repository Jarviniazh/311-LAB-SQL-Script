SELECT employee_id, last_name, salary
FROM employees
WHERE (salary BETWEEN 8000 AND 15000)
    AND (job_id = 'SA_REP' OR job_id = 'IT_PROG')
ORDER BY salary DESC, employee_id;