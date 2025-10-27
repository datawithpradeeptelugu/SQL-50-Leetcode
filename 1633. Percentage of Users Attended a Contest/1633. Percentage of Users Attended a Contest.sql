-- Drop existing tables if they already exist (for reruns)
DROP TABLE IF EXISTS Register;
DROP TABLE IF EXISTS Users;

-- Create Users table
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(100)
);

-- Create Register table
CREATE TABLE Register (
    contest_id INT,
    user_id INT,
    PRIMARY KEY (contest_id, user_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Insert data into Users table
INSERT INTO Users (user_id, user_name) VALUES
(6, 'Alice'),
(2, 'Bob'),
(7, 'Alex');

-- Insert data into Register table
INSERT INTO Register (contest_id, user_id) VALUES
(215, 6),
(209, 2),
(208, 2),
(210, 6),
(208, 6),
(209, 7),
(209, 6),
(215, 7),
(208, 7),
(210, 2),
(207, 2),
(210, 7);


SELECT R.contest_id,
       Cast(count(r.user_id)*100.0/  (Select Count(*) from users) as decimal (10,2)) percentage
      
FROM Users U
RIGHT JOIN Register R
ON U.user_id=R.user_id
GROUP BY R.contest_id
order by  Cast(count(r.user_id)*100.0/  (Select Count(*) from users) as decimal (10,2)) Desc


