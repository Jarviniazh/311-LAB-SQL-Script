SELECT (sysdate + 1) AS tomorrow 
FROM dual;


SELECT last_name, first_name, salary, TRUNC(salary * (1+0.07)) AS "Good Salary", salary*0.07*12 AS "Annual Pay Increase"
FROM employees
WHERE department_id IN (20, 50, 60);



SELECT UPPER(e.last_name) || ', ' || UPPER(e. first_name) || ' is ' || j.job_title
FROM employees e
LEFT JOIN jobs j ON e.job_id = j.job_id
WHERE (e.last_name Like '%s') AND (e.first_name LIKE 'C%' OR e.first_name LIKE 'K%')
ORDER BY e.last_name;


SELECT last_name, hire_date, TRUNC((sysdate - hire_date)/365) AS "Years Worked"
FROM employees
WHERE hire_date < '01-JAN-92'
ORDER BY "Years Worked";



SELECT city, country_id, COALESCE(CAST(state_province AS VARCHAR(25)), 'Unknown Province') AS "STATE_PROVINCE"
FROM locations
WHERE city LIKE 'S%' AND LENGTH(city) > 8;