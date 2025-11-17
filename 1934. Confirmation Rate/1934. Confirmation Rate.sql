SELECT *
FROM Signups

SELECT *
FROM Confirmations


SELECT 
	S.USER_ID AS user_id,
	CAST (ISNULL(SUM(CASE 
		WHEN C.action='confirmed' THEN 1 ELSE 0 END)*1.0/
		NULLIF(COUNT(C.USER_ID),0),0) AS decimal(4,2)) AS confirmation_rate 
FROM Signups S
LEFT JOIN Confirmations C
ON S.user_id=C.user_id
GROUP BY  S.USER_ID


1/1 =1
1.0/1= 1.0
