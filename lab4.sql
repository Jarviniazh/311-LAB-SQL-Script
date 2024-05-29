-- Question 1
/*
Display the department name, city, street address and postal code for all 
departments. Use the JOIN and USING form of syntax. 
Sort the output by department name descending.
*/
SELECT d.department_name, l.street_address, l.city, l.postal_code
FROM departments d 
JOIN locations l  USING (location_id)
ORDER BY d.department_name DESC;

-- Question 2
/*
Display full name of the employees, their hire date and salary together with 
their department name, but only for departments which names start with A or S. Full name should be in format of :
First / Last. Use the JOIN and ON form of syntax.
Sort the output by department name and then by last name.
*/
SELECT e.first_name || '/' || e.last_name AS "Employee Name", e.hire_date, e.salary, d.department_name
FROM employees e
LEFT JOIN departments d ON d.department_id = e.department_id
WHERE d.department_name LIKE 'A%' 
    OR d.department_name LIKE 'S%'
ORDER BY d.department_name, e.last_name;

-- Question 3
/*
Display full name of  the manager of each department in provinces Ontario, 
California and Washington plus department name, city, postal code and province name. Full name should be in format of :
Last,  First.  Use the JOIN and ON form of syntax.
Sort the output by city and then by department name. 
*/
SELECT * FROM locations;
SELECT m.last_name || ', ' || m.first_name AS "Manager Name",d.department_name, l.city, l.postal_code, l.state_province
FROM employees m
LEFT JOIN departments d ON m.employee_id = d.manager_id
LEFT JOIN locations l ON d.location_id = l.location_id
WHERE LOWER(l.state_province) IN ('ontario', 'california', 'washington')
ORDER BY l.city, d.department_name;

-- Question 4
/*
Display the department name and Highest, Lowest and Average pay per each 
department. Name these results High, Low and Avg.
Use JOIN and ON form of the syntax.
Sort the output so that department with highest average salary are shown first.
*/
SELECT d.department_name, MAX(e.salary) "High", MIN(e.salary) "Low", AVG(e.salary) "Avg"
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY "High" DESC;

-- Question 5
/*
Display the employee last name and employee number along with their
manager¡¯s last name and manager number. Label the columns Employee, 
Emp#, Manager, and Mgr#, respectively. 
*/
SELECT e.employee_id AS "Emp#", e.last_name || ', ' || e.first_name "Employee", m.employee_id "Mgr#", m.last_name || ', ' || m.first_name "Manager"
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.employee_id;