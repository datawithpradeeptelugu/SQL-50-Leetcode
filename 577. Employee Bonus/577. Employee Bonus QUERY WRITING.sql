USE Leetcode
-- Create Employee table
CREATE TABLE Employee (
    empId INT PRIMARY KEY,
    name VARCHAR(50),
    supervisor INT NULL,
    salary INT
);

-- Insert Employee data
INSERT INTO Employee (empId, name, supervisor, salary) VALUES
(3, 'Brad', NULL, 4000),
(1, 'John', 3, 1000),
(2, 'Dan', 3, 2000),
(4, 'Thomas', 3, 4000);

-- Create Bonus table
CREATE TABLE Bonus (
    empId INT PRIMARY KEY,
    bonus INT,
    FOREIGN KEY (empId) REFERENCES Employee(empId)
);

-- Insert Bonus data
INSERT INTO Bonus (empId, bonus) VALUES
(2, 500),
(4, 2000);

SELECT *
FROM Employee
SELECT * 
FROM Bonus

SELECT 
    E.name,
    B.bonus
FROM Employee E
LEFT JOIN Bonus B
ON E.empId=B.empId
WHERE B.bonus IS NULL OR B.bonus<1000





