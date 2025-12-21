CREATE TABLE RequestAccepted (
    requester_id INT,
    accepter_id  INT,
    accept_date  DATE
);
INSERT INTO RequestAccepted (requester_id, accepter_id, accept_date) VALUES
(1, 2, '2016-06-03'),
(1, 3, '2016-06-08'),
(2, 3, '2016-06-08'),
(3, 4, '2016-06-09');


SELECT *
FROM RequestAccepted


WITH PARENT_TABLE AS
(
SELECT requester_id AS ID
FROM RequestAccepted
UNION ALL
SELECT accepter_id AS ID
FROM RequestAccepted
)

SELECT TOP 1 
ID,
COUNT(*) AS num
FROM PARENT_TABLE
GROUP BY ID
ORDER BY NUM DESC


