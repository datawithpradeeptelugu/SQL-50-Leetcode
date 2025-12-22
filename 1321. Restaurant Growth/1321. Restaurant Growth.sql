INSERT INTO Customer (customer_id, name, visited_on, amount) VALUES
(1, 'Jhon',   '2019-01-01', 100),
(2, 'Daniel', '2019-01-02', 110),
(3, 'Jade',   '2019-01-03', 120),
(4, 'Khaled', '2019-01-04', 130),
(5, 'Winston','2019-01-05', 110),
(6, 'Elvis',  '2019-01-06', 140),
(7, 'Anna',   '2019-01-07', 150),
(8, 'Maria',  '2019-01-08', 80),
(9, 'Jaze',   '2019-01-09', 110),
(1, 'Jhon',   '2019-01-10', 130),
(3, 'Jade',   '2019-01-10', 150);


SELECT *
FROM CUSTOMER


WITH daily AS (
    SELECT visited_on,
           SUM(amount) AS amount
    FROM Customer
    GROUP BY visited_on
)

SELECT 
VISITED_ON,
CAST(SUM(DAILY.AMOUNT) OVER ( ORDER BY VISITED_ON ROWS BETWEEN  6 PRECEDING AND CURRENT ROW) AS DECIMAL(10,2)) AS amount,
CAST(AVG(DAILY.AMOUNT*1.0) OVER (ORDER BY VISITED_ON ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS DECIMAL(10,2)) AS average_amount
FROM DAILY
ORDER BY VISITED_ON
OFFSET 6 ROWS