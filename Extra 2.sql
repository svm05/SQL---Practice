use sql_practice;

SELECT * FROM employee WHERE salary IS NOT NULL;

SELECT * FROM employee WHERE department IN ('Engineering', 'Finance');

SELECT * FROM employee WHERE department NOT IN ('Engineering', 'Finance') OR department IS NULL;

SELECT * FROM employee WHERE salary > 50000 OR salary IS NULL;


SELECT e.name, e.department, d.location 
FROM employee e
LEFT JOIN department d ON e.department = d.dept_name
WHERE d.dept_name IS NULL;