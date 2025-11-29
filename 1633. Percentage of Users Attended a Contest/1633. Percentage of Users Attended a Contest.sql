SELECT *
FROM USERS

SELECT *
FROM Register


SELECT 
R.contest_id,
CAST (
COUNT (R.USER_ID)*100.0 /
(SELECT COUNT (*) FROM Users)  AS decimal (10,2) ) AS [percentage]
FROM Register R
LEFT JOIN Users U
ON R.user_id=U.user_id
GROUP BY R.contest_id
ORDER BY [percentage] DESC, R.contest_id ASC 