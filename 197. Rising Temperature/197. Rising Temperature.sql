use Leetcode
CREATE TABLE Weather (
    id INT PRIMARY KEY,
    recordDate DATE,
    temperature INT
);

INSERT INTO Weather (id, recordDate, temperature) VALUES
(1, '2015-01-01', 10),
(2, '2015-01-02', 25),
(3, '2015-01-03', 20),
(4, '2015-01-04', 30);




SELECT W1.ID,

FROM Weather W1
LEFT JOIN Weather W2
ON W1.recordDate=DATEADD(DAY,1,W2.recordDate)
WHERE W1.temperature>W2.temperature


