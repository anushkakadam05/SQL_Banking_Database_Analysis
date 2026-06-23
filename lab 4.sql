#DQL DEMONSTRATION
use BankingDB;
SELECT * FROM Customers;
SELECT * FROM Accounts;
SELECT * FROM Branches;
SELECT * FROM Transactions;
SELECT * FROM AccountBranches;
SELECT * FROM Loans;

CREATE DATABASE SQL_PRACTICE;
USE SQL_PRACTICE;

SELECT * FROM Accounts
WHERE AccountType = "Savings";
SELECT * FROM Accounts
WHERE Balance > 25000;
SELECT * FROM Transactions
WHERE Amount BETWEEN 5000 and 20000;
SELECT * FROM Transactions
WHERE Amount >=5000 and Amount<=20000;
SELECT * FROM Customers
WHERE CustomerID IN (101,102);
SELECT * FROM Customers
WHERE FirstName LIKE 'A%' ;
SELECT * FROM Customers
ORDER BY FirstName DESC;
SELECT * FROM Accounts
ORDER BY Balance DESC;
SELECT DISTINCT AccountType
FROM Accounts;
SELECT * FROM Accounts
ORDER BY Balance DESC 
LIMIT 1 OFFSET 1;
SELECT *
FROM Transactions
LIMIT 5 OFFSET 2;
use BankingDB;
SELECT * FROM customers
WHERE Phone IS NULL;
SELECT * FROM customers
WHERE Email IS NOT NULL;
SELECT AccountID , Balance ,
CASE 
WHEN Balance >= 50000 THEN 'Premium Account'
WHEN Balance <= 25000 THEN'Standard Account'
ELSE 'Basic ACCOUNT'
END AS AccountCategory
FROM Accounts; 
SELECT AccountID,Balance,
RANK() OVER (ORDER BY BALANCE) AS BalanceRank
FROM Accounts;
SELECT TransactionID,
       Amount,
       SUM(Amount) OVER (ORDER BY TransactionDate) AS RunningTotal
FROM Transactions;

SELECT TransactionID,
       Amount,
       AVG(Amount) OVER () AS AverageTransaction
FROM Transactions;


