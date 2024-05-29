-- Qustion 1
SELECT (AVG(salary) - MIN(salary)) AS "Real Amount"
FROM employees;

-- Qustion 2
SELECT department_id, MAX(salary) "High", MIN(salary) "Low", AVG(salary) "Avg"
FROM employees
GROUP BY department_id
ORDER BY "High" DESC;

-- Qustion 3
SELECT department_id "Dept#", job_id "Job", COUNT(employee_id) AS "How Many"
FROM employees
GROUP BY department_id, job_id
HAVING COUNT(employee_id) > 1
ORDER BY "How Many" DESC;

-- Qustion 4
SELECT job_id, SUM(salary) AS total_salary
FROM employees
WHERE job_id NOT IN ('AD_PRES', 'AD_VP')
GROUP BY job_id
HAVING SUM(salary) > 15000
ORDER BY total_salary DESC;

-- Qustion 5
SELECT manager_id, COUNT(*) AS "How Many"
FROM employees
WHERE manager_id NOT IN(100, 101, 102)
GROUP BY manager_id
HAVING COUNT(*) > 2
ORDER BY "How Many" DESC;

-- Qustion 6
SELECT department_id, MAX(hire_date) "Latest", MIN(hire_date) "Earliest"
FROM employees
WHERE department_id NOT IN (10, 20)
GROUP BY department_id
HAVING MAX(hire_date) < '01-JAN-00'
ORDER BY "Latest" DESC;