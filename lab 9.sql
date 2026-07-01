use BankingDB;
SELECT TransactionID,CustomerID,TransactionType, Amount
FROM Transactions_2
WHERE Amount > (
SELECT AVG(Amount) 
FROM Transactions_2 
);
SELECT TransactionID, CustomerID ,
(
SELECT CONCAT(c.FirstName,' ',c.LastName)
FROM Customers_2 c
WHERE c.CustomerID = t.CustomerID
) AS CustomerName,
(
SELECT BranchName
FROM Customers_2 c
WHERE c.CustomerID = t. CustomerID
) AS BranchName, TransactionType, Amount
FROM Transactions_2 t
ORDER BY BranchName,t.CustomerID;

ALTER TABLE Customers_2
ADD BranchName VARCHAR(50);

UPDATE Customers_2 SET BranchName = 'Mumbai' WHERE CustomerID IN (101, 104, 107);
UPDATE Customers_2 SET BranchName = 'Pune'   WHERE CustomerID IN (102, 105);
UPDATE Customers_2 SET BranchName = 'Nashik' WHERE CustomerID IN (103, 106);
UPDATE Customers_2 SET BranchName = 'Nagpur' WHERE CustomerID = 108;

SELECT * FROM Customers_2;
INSERT customers_2
VALUES
(109,'Anushka','Kadam','anushka@gmail.com','1234567890','2025-08-23','2000-03-21','Bandra');
SELECT * FROM Transactions_2;
INSERT INTO Transactions_2
values (323,209,109,'2025-08-12',34000.00,'Deposit');

 



