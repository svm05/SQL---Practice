use sql_practice;

SELECT DISTINCT salary 
FROM employee 
ORDER BY salary DESC 
LIMIT 1 OFFSET 1;

SELECT department, COUNT(*) AS employee_count 
FROM employee 
GROUP BY department 
HAVING COUNT(*) > 2;

ALTER TABLE employee ADD COLUMN manager_id INT;  -- Adding manager_id column

SELECT e1.name AS employee, e2.name AS manager 
FROM employee e1 
LEFT JOIN employee e2 ON e1.manager_id = e2.id;

SELECT name, department, salary 
FROM employee e1
WHERE salary = (
    SELECT MAX(salary) 
    FROM employee e2 
    WHERE e1.department = e2.department
);

SELECT * FROM employee 
WHERE joining_date = (SELECT MAX(joining_date) FROM employee);

SELECT name, joining_date, 
       DATEDIFF(CURDATE(), joining_date) AS days_worked
FROM employee
ORDER BY days_worked DESC
LIMIT 1;

SELECT department, 
       MIN(age) AS youngest, 
       MAX(age) AS oldest
FROM employee
GROUP BY department;
