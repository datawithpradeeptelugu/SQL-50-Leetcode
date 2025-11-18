CREATE TABLE Cinema (
    id INT PRIMARY KEY,
    movie VARCHAR(100),
    description VARCHAR(200),
    rating DECIMAL(3,1)
);

INSERT INTO Cinema (id, movie, description, rating) VALUES
(1, 'War', 'great 3D', 8.9),
(2, 'Science', 'fiction', 8.5),
(3, 'irish', 'boring', 6.2),
(4, 'Ice song', 'Fantacy', 8.6),
(5, 'House card', 'Interesting', 9.1);


SELECT *
--CASE WHEN id % 2 =1 THEN 'T' END,
--CASE WHEN description!='boring' THEN 'T' END
FROM Cinema
WHERE id % 2 =1 AND description!='boring'
ORDER BY rating DESC



