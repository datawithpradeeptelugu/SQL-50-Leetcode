CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT,
    salary INT
);
INSERT INTO Employees (employee_id, name, manager_id, salary) VALUES
(3,  'Mila',       9,     60301),
(12, 'Antonella', NULL,  31000),
(13, 'Emery',     NULL,  67084),
(1,  'Kalel',     11,    21241),
(9,  'Mikaela',   NULL,  50937),
(11, 'Joziah',    6,     28485);


/* Write your T-SQL query statement below */
SELECT E.employee_id
FROM Employees E
LEFT JOIN Employees M
ON E.manager_id=M.employee_id
WHERE 
E.salary <30000 AND
M.employee_id IS NULL AND
E.manager_id IS NOT NULL
ORDER BY E.employee_id ASC


