use sql_practice;

SELECT name, age, salary FROM employee;
SELECT * FROM employee WHERE age > 28;
SELECT * FROM employee WHERE salary > 55000 AND department = 'Engineering';
SELECT * FROM employee ORDER BY salary DESC;
SELECT * FROM employee ORDER BY salary DESC LIMIT 3;
SELECT * FROM employee WHERE name LIKE 'A%';  -- Names starting with 'A'