use BankingDB;
SELECT SUM(Balance) FROM Customers;
DESC Customers;
SELECT SUM(Balance) AS Total_Balance
FROM Accounts;
SELECT SUM(Balance) AS Total_Balance 
FROM Accounts
WHERE AccountType = "Savings";
SELECT AVG(Balance) AS Avg_Balance
FROM Accounts;
SELECT MAX(Balance) FROM Accounts;
SELECT MIN(Balance) FROM Accounts;
SELECT COUNT(*) AS Total_customer FROM Customers;
SELECT AccountType, SUM(Balance) AS Total_Balance FROM Accounts
GROUP BY AccountType;
SELECT AccountType , MAX(Balance) as Total_Balace FROM Accounts
WHERE AccountType = "Savings"
GROUP BY AccountType;
SELECT AccountType ,SUM(Balance) AS Total_Balance  FROM Accounts
WHERE Balance >=25000
GROUP BY AccountType;
SELECT AccountType , SUM(Balance) AS Total_Balance FROM Accounts
GROUP BY AccountType
HAVING SUM(Balance) >=25000;



