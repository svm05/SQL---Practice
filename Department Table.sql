use sql_practice;
CREATE TABLE department (
    dept_id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL,
    location VARCHAR(50)
);

INSERT INTO department (dept_name, location) VALUES
('Engineering', 'Bangalore'),
('Marketing', 'Mumbai'),
('Finance', 'Delhi'),
('Human Resources', 'Hyderabad'),
('Operations', 'Chennai');