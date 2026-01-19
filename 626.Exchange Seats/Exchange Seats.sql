CREATE TABLE Seat (
    id INT PRIMARY KEY,
    student VARCHAR(50)
);


INSERT INTO Seat (id, student) VALUES
(1, 'Abbot'),
(2, 'Doris'),
(3, 'Emerson'),
(4, 'Green'),
(5, 'Jeames');

Select
CASE 
WHEN ID%2 =1 AND ID <(SELECT MAX(ID) FROM Seat) THEN ID+1 
WHEN ID%2 =0 THEN ID-1
ELSE ID 
END AS ID,
student
FROM Seat
ORDER BY ID
