



INSERT INTO Users (user_id, name, mail) VALUES
(1, 'Winston', 'winston@leetcode.com'),
(2, 'Jonathan', 'jonathanisgreat'),
(3, 'Annabelle', 'bella-@leetcode.com'),
(4, 'Sally', 'sally.come@leetcode.com'),
(5, 'Marwan', 'quarz#2020@leetcode.com'),
(6, 'David', 'david69@gmail.com'),
(7, 'Shapiro', '.shapo@leetcode.com');





SELECT  
	user_id
	,name 
	,mail

FROM Users U
WHERE U.mail LIKE '%@leetcode.com%' and
LEFT(U.mail,1) LIKE '[A-Za-z]' AND
PATINDEX('%[^A-Za-z0-9_.-]%',LEFT(U.MAIL,LEN(MAIL)-LEN('@leetcode.com')))=0





