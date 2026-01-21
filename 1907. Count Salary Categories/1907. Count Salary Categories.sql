CREATE TABLE Accounts (
    account_id INT,
    income INT
);
INSERT INTO Accounts (account_id, income) VALUES
(3, 108939),
(2, 12747),
(8, 87709),
(6, 91796);


SELECT  
'Low Salary' as category,
sum(case when income<20000 then 1 else 0 End ) accounts_count
from
accounts
union all
SELECT  
'Average Salary' as category,
sum(case when income>=20000 and income<=50000 then 1 else 0 End ) accounts_count
from
accounts
union all
SELECT  
'High Salary' as category,
sum(case when income>50000 then 1 else 0 End ) accounts_count
from
accounts


