create database sql_practice;
use sql_practice;

CREATE TABLE employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE
);

INSERT INTO employee (name, age, department, salary, joining_date) VALUES
('Amit Sharma', 28, 'Engineering', 60000.00, '2022-06-15'),
('Priya Verma', 25, 'Marketing', 50000.00, '2023-01-10'),
('Rahul Mehta', 30, 'Finance', 70000.00, '2021-09-20'),
('Neha Iyer', 27, 'Human Resources', 55000.00, '2022-12-05'),
('Suresh Reddy', 35, 'Operations', 80000.00, '2020-04-25');

SELECT * FROM employee;