DROP TABLE Employees
DROP TABLE EmployeeUNI
-- Create Employees table
CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Insert data into Employees table
INSERT INTO Employees (id, name) VALUES
(1, 'Alice'),
(7, 'Bob'),
(11, 'Meir'),
(90, 'Winston'),
(3, 'Jonathan');


CREATE TABLE EmployeeUNI (
    id INT,
    unique_id INT,
    PRIMARY KEY (id)
);

-- Insert data into EmployeeUNI table
INSERT INTO EmployeeUNI (id, unique_id) VALUES
(3, 1),
(11, 2),
(90, 3);



SELECT 
    unique_id,
    name
FROM Employees E
LEFT JOIN EmployeeUNI U
ON E.id=U.id


