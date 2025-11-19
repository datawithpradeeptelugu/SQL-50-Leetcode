-- Create Prices table
CREATE TABLE Prices (
    product_id INT,
    start_date DATE,
    end_date DATE,
    price INT,
    PRIMARY KEY (product_id, start_date, end_date)
);

-- Create UnitsSold table
CREATE TABLE UnitsSold (
    product_id INT,
    purchase_date DATE,
    units INT
);

INSERT INTO Prices (product_id, start_date, end_date, price) VALUES
(1, '2019-02-17', '2019-02-28', 5),
(1, '2019-03-01', '2019-03-22', 20),
(2, '2019-02-01', '2019-02-20', 15),
(2, '2019-02-21', '2019-03-31', 30);
INSERT INTO UnitsSold (product_id, purchase_date, units) VALUES
(1, '2019-02-25', 100),
(1, '2019-03-01', 15),
(2, '2019-02-10', 200),
(2, '2019-03-22', 30);


SELECT *
FROM Prices
SELECT *
FROM UnitsSold


SELECT 
P.product_id,
CAST
(
COALESCE(SUM(P.price*U.units)*1.0 /SUM(U.units),0) AS decimal(4,2))    AS average_price
FROM Prices P
LEFT JOIN UnitsSold U
ON P.product_id=U.product_id AND U.purchase_date BETWEEN P.start_date AND P.end_date
GROUP BY P.product_id



