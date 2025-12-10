USE Leetcode

CREATE TABLE Activities (
    sell_date DATE,
    product VARCHAR(50)
);

INSERT INTO Activities (sell_date, product) VALUES
('2020-05-30', 'Headphone'),
('2020-06-01', 'Pencil'),
('2020-06-02', 'Mask'),
('2020-05-30', 'Basketball'),
('2020-06-01', 'Bible'),
('2020-06-02', 'Mask'),
('2020-05-30', 'T-Shirt');

WITH DISTINCT_PRODUCTS  
AS (
    SELECT 
        DISTINCT 
        SELL_DATE,
        PRODUCT
    FROM Activities
)


SELECT  
sell_date,
COUNT(PRODUCT) AS num_sold,
STRING_AGG(PRODUCT,',') WITHIN GROUP (ORDER BY PRODUCT DESC)AS products 
FROM DISTINCT_PRODUCTS 
GROUP BY sell_date