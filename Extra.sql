use sql_practice;

SELECT * FROM employee WHERE salary > (SELECT AVG(salary) FROM employee);

SELECT name, salary, department FROM employee e1
WHERE salary = (SELECT MAX(salary) FROM employee e2 WHERE e1.department = e2.department);

UPDATE employee SET salary = salary + 5000 WHERE department = 'Marketing';

DELETE FROM employee WHERE department = 'Human Resources';