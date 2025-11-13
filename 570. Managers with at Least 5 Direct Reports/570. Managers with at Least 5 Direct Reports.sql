USE SHORTS



CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    managerId INT NULL
);


INSERT INTO Employee (id, name, department, managerId) VALUES
(101, 'John', 'A', NULL),
(102, 'Dan', 'A', 101),
(103, 'James', 'A', 101),
(104, 'Amy', 'A', 101),
(105, 'Anne', 'A', 101),
(106, 'Ron', 'B', 101);


SELECT e.name
FROM Employee e
JOIN Employee m
ON e.id=m.managerId
GROUP BY e.name
HAVING COUNT(m.id)>=5







