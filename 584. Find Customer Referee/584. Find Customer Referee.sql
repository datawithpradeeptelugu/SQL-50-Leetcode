CREATE TABLE Customer (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  referee_id INT
);

INSERT INTO Customer (id, name, referee_id) VALUES
(1, 'Will', NULL),
(2, 'Jane', NULL),
(3, 'Alex', 2),
(4, 'Bill', NULL),
(5, 'Zack', 1),
(6, 'Mark', 2);


SELECT 
name,

(CASE 
WHEN referee_id!=2 THEN 'TRUE'
ELSE 'FALSE'
END)   FIRST_CONDITION,

(CASE 
WHEN referee_id IS NULL THEN 'TRUE'
ELSE 'FALSE'
END )  SECOND_CONDTION,

(CASE 
WHEN referee_id!=2 OR  referee_id IS NULL THEN 'TRUE'
ELSE 'FALSE'
END) AS FINAL_CONDITION
FROM CUSTOMER

WHERE 
referee_id!=2 or referee_id IS NULL