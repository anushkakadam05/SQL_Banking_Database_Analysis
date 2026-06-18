CREATE DATABASE BankingDB;
USE BankingDB;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    AccountCreationDate DATE
);
INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate, DateOfBirth)
VALUES
(102, 'Priya', 'Patil', 'priya@gmail.com', '9988776655', '2025-05-03', '2000-09-20'),
(103, 'Anushka', 'Kadam', 'anushka@gmail.com', '9786564676', '2025-04-05', '2000-09-21');

#accounts
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    AccountType VARCHAR(20),
    Balance DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) );
    INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(201, 101, 'Savings', 25000),
(202, 102, 'Current', 40000);
SELECT * FROM Accounts;

#transactions
 CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT,
    TransactionDate DATE,
    Amount DECIMAL(10,2),
    TransactionType VARCHAR(20),
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID) );
    INSERT INTO Transactions
(TransactionID, AccountID, TransactionDate, Amount, TransactionType)
VALUES
(1, 201, '2025-06-01', 5000.00, 'Deposit'),
(2, 202, '2025-06-05', 2000.00, 'Withdrawal');
SELECT * FROM Transactions
 
#branches
CREATE TABLE Branches (
	BranchID INT PRIMARY KEY,
    BranchName VARCHAR(100),
    BranchAddress VARCHAR(200),
    BranchPhone VARCHAR(15)
);
INSERT INTO Branches
(BranchID, BranchName, BranchAddress, BranchPhone)
VALUES
(1, 'Kamothe Branch', 'Kamothe', 'Navi Mumbai', '9846353567'),
(2, 'Dadar Branch', 'Dadar', 'Mumbai', '8694563475');
SELECT * FROM branches;

#accountbranches
CREATE TABLE AccountBranches (
    AccountID INT,
    BranchID INT,
    AssignmentDate DATE,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID),
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);
INSERT INTO AccountBranches
(AccountID, BranchID, AssignmentDate)
VALUES
(201, 1, '2025-05-01'),
(202, 2, '2025-05-02');
SELECT * FROM AccountBranches;

#loans
CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    LoanAmount DECIMAL(10,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO Loans
(LoanID, CustomerID)
VALUES
(1, 101),
(2, 102);

UPDATE Customers
SET Phone = '9999999999'
WHERE CustomerID = 101;
select * from customers;
SELECT * FROM Customers
WHERE CustomerID = 101;
UPDATE Customers
SET Email = 'priya.patil@gmail.com'
WHERE CustomerID = 102;
SELECT * FROM Customers
WHERE CustomerID = 102;
DELETE FROM Transactions
WHERE TransactionID = 1;
SELECT * FROM Transactions;
DELETE FROM Accounts
WHERE AccountID = 202;
SELECT * FROM Accounts;

















