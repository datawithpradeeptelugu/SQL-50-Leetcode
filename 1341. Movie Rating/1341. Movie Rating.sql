CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO Movies (movie_id, title) VALUES
(1, 'Avengers'),
(2, 'Frozen 2'),
(3, 'Joker');



-- Users table
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO Users (user_id, name) VALUES
(1, 'Daniel'),
(2, 'Monica'),
(3, 'Maria'),
(4, 'James');


-- MovieRating table
CREATE TABLE MovieRating (
    movie_id INT NOT NULL,
    user_id INT NOT NULL,
    rating INT NOT NULL,
    created_at DATE NOT NULL,
    CONSTRAINT pk_movie_rating PRIMARY KEY (movie_id, user_id),
    CONSTRAINT fk_mr_movie FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    CONSTRAINT fk_mr_user  FOREIGN KEY (user_id)  REFERENCES Users(user_id)
);


INSERT INTO MovieRating (movie_id, user_id, rating, created_at) VALUES
(1, 1, 3, '2020-01-12'),
(1, 2, 4, '2020-02-11'),
(1, 3, 2, '2020-02-12'),
(1, 4, 1, '2020-01-01'),
(2, 1, 5, '2020-02-17'),
(2, 2, 2, '2020-02-01'),
(2, 3, 2, '2020-03-01'),
(3, 1, 3, '2020-02-22'),
(3, 2, 4, '2020-02-25');




/* Write your T-SQL query statement below */

WITH HIGHEST_MOV_REVIEW_PER_USER AS
(
--HIHGEST NO OF MOVIES REVIEW PER USER
SELECT TOP 1
u.name,
COUNT(*) AS NO_MOVIES
FROM MovieRating mr
LEFT JOIN Users  u
on mr.user_id =u.user_id 
GROUP BY u.name
ORDER BY COUNT(*) DESC,u.name ASC

),

HIGHEST_AVG_RATING_MOVIE AS (

SELECT TOP 1
m.title,
AVG(mr.rating*1.0) AS AVG_RATING
FROM  MovieRating mr
LEFT JOIN Movies m
ON mr.movie_id =m.movie_id 
WHERE mr.created_at >= '2020-02-01' and mr.created_at <= '2020-02-29'
GROUP BY m.title
ORDER BY AVG(mr.rating*1.0) DESC,m.title ASC

)

SELECT name as results
FROM HIGHEST_MOV_REVIEW_PER_USER  
UNION ALL
SELECT title AS results 
FROM HIGHEST_AVG_RATING_MOVIE 
