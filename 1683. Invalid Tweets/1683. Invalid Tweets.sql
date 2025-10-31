CREATE TABLE Tweets (
    tweet_id INT PRIMARY KEY,
    content VARCHAR(255)
);


INSERT INTO Tweets (tweet_id, content) VALUES
(1, 'Let us Code'),
(2, 'More than fifteen chars are here!');

SELECT tweet_id 
--,
--CASE WHEN LEN(content)>15 THEN 'TRUE' ELSE 'FALSE' END AS CONDITION
FROM Tweets
WHERE LEN(content)>15 


