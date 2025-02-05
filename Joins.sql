use sql_practice;

SELECT e.name, e.age, e.salary, d.dept_name, d.location 
FROM employee e
JOIN department d ON e.department = d.dept_name;

SELECT e.name, e.department, d.location 
FROM employee e
LEFT JOIN department d ON e.department = d.dept_name;

SELECT e.name, e.department, d.location 
FROM employee e
RIGHT JOIN department d ON e.department = d.dept_name;

SELECT e.name, e.department, d.location 
FROM employee e
LEFT JOIN department d ON e.department = d.dept_name
UNION
SELECT e.name, e.department, d.location 
FROM employee e
RIGHT JOIN department d ON e.department = d.dept_name;