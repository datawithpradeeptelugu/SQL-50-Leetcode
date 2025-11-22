

-- Create Employee table
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    experience_years INT NOT NULL
);

-- Create Project table
CREATE TABLE Project (
    project_id INT,
    employee_id INT,
    PRIMARY KEY (project_id, employee_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

--Employee table
INSERT INTO Employee (employee_id, name, experience_years) VALUES
(1, 'Khaled', 3),
(2, 'Ali', 2),
(3, 'John', 1),
(4, 'Doe', 2);

--Project table
INSERT INTO Project (project_id, employee_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 4);

SELECT 
P.project_id  ,
ROUND(AVG(E.experience_years),2) AS average_years
FROM
Project P
LEFT JOIN Employee E
ON P.employee_id=E.employee_id
GROUP BY P.project_id 





