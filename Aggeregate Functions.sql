use sql_practice;

SELECT COUNT(*) AS total_employees FROM employee;
SELECT AVG(salary) AS avg_salary FROM employee;
SELECT MAX(salary) AS max_salary, MIN(salary) AS min_salary FROM employee;
SELECT department, COUNT(*) AS num_employees FROM employee GROUP BY department;
SELECT department, SUM(salary) AS total_salary FROM employee GROUP BY department;
SELECT department, AVG(salary) AS avg_salary 
FROM employee 
GROUP BY department 
HAVING avg_salary > 55000;