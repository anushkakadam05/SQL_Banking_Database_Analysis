use BankingDB;
CREATE VIEW Suspicious_Transactions AS 
SELECT 
TransactionID,CustomerID, TransactionType, Amount
FROM Transactions_2
WHERE Amount > 25000;
SELECT * FROM Transactions_2;
SELECT * FROM Suspicious_Transactions;
INSERT INTO Transactions_2
VALUES
(333,212,101,'2025-05-24',67000,'Deposit'),
(334,213,102,'2025-07-21',29000,'Withdrawal');
CREATE OR REPLACE VIEW Suspicious_Transactions AS
SELECT
TransactionID,
CONCAT (FirstName,' ',LastName) AS Customer_Name,
BranchName,TransactionType, Amount
FROM Transactions_2 t
INNER JOIN Customers_2 c
ON t.CustomerID = c.CustomerID
WHERE Amount > 25000;
SELECT * FROM Suspicious_Transactions;
SELECT
    TransactionID,
    Customer_Name,
    BranchName,
    TransactionType,
    Amount
FROM Suspicious_Transactions
ORDER BY Amount DESC;







 








