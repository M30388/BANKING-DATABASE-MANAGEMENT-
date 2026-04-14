CREATE DATABASE Banking;
USE Banking; 
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    address VARCHAR(255)
); 
CREATE TABLE Accounts (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    account_type VARCHAR(20),
    balance DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
); 
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT,
    transaction_type VARCHAR(20),
    amount DECIMAL(10,2),
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
); 
CREATE TABLE Loans (
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    loan_amount DECIMAL(10,2),
    loan_type VARCHAR(50),
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
INSERT INTO Customers (name, email, phone, address) VALUES
('Rahul Sharma','rahul1@gmail.com','9000000001','Delhi'),
('Priya Verma','priya2@gmail.com','9000000002','Noida'),
('Amit Singh','amit3@gmail.com','9000000003','Ghaziabad'),
('Neha Gupta','neha4@gmail.com','9000000004','Delhi'),
('Rohit Kumar','rohit5@gmail.com','9000000005','Gurgaon'),
('Anjali Mehta','anjali6@gmail.com','9000000006','Faridabad'),
('Vikas Yadav','vikas7@gmail.com','9000000007','Delhi'),
('Sneha Kapoor','sneha8@gmail.com','9000000008','Noida'),
('Arjun Patel','arjun9@gmail.com','9000000009','Ahmedabad'),
('Pooja Sharma','pooja10@gmail.com','9000000010','Jaipur'),
('Karan Malhotra','karan11@gmail.com','9000000011','Delhi'),
('Simran Kaur','simran12@gmail.com','9000000012','Punjab'),
('Manish Tiwari','manish13@gmail.com','9000000013','Lucknow'),
('Nikita Jain','nikita14@gmail.com','9000000014','Indore'),
('Deepak Chauhan','deepak15@gmail.com','9000000015','Meerut'),
('Riya Arora','riya16@gmail.com','9000000016','Delhi'),
('Suresh Patel','suresh17@gmail.com','9000000017','Surat'),
('Meena Iyer','meena18@gmail.com','9000000018','Chennai'),
('Ajay Mishra','ajay19@gmail.com','9000000019','Varanasi'),
('Kavita Singh','kavita20@gmail.com','9000000020','Patna'),
('Harsh Vardhan','harsh21@gmail.com','9000000021','Delhi'),
('Tanvi Shah','tanvi22@gmail.com','9000000022','Mumbai'),
('Raj Malhotra','raj23@gmail.com','9000000023','Delhi'),
('Ishita Bose','ishita24@gmail.com','9000000024','Kolkata'),
('Yash Agarwal','yash25@gmail.com','9000000025','Kanpur'); 
INSERT INTO Accounts (customer_id, account_type, balance) VALUES
(1,'Savings',50000),
(2,'Current',75000),
(3,'Savings',30000),
(4,'Current',45000),
(5,'Savings',60000),
(6,'Savings',35000),
(7,'Current',80000),
(8,'Savings',25000),
(9,'Current',90000),
(10,'Savings',40000),
(11,'Savings',55000),
(12,'Current',70000),
(13,'Savings',20000),
(14,'Savings',65000),
(15,'Current',72000),
(16,'Savings',48000),
(17,'Savings',53000),
(18,'Current',67000),
(19,'Savings',29000),
(20,'Savings',31000),
(21,'Current',88000),
(22,'Savings',76000),
(23,'Savings',54000),
(24,'Current',61000),
(25,'Savings',43000); 
INSERT INTO Transactions (account_id, transaction_type, amount) VALUES
(1,'Deposit',10000),
(2,'Withdrawal',5000),
(3,'Deposit',7000),
(4,'Withdrawal',2000),
(5,'Deposit',12000),
(6,'Withdrawal',3000),
(7,'Deposit',15000),
(8,'Deposit',4000),
(9,'Withdrawal',6000),
(10,'Deposit',8000),
(11,'Withdrawal',2500),
(12,'Deposit',11000),
(13,'Withdrawal',1500),
(14,'Deposit',9000),
(15,'Withdrawal',3500),
(16,'Deposit',5000),
(17,'Withdrawal',2000),
(18,'Deposit',13000),
(19,'Withdrawal',1000),
(20,'Deposit',6000),
(21,'Withdrawal',7000),
(22,'Deposit',14000),
(23,'Withdrawal',4500),
(24,'Deposit',10000),
(25,'Withdrawal',3000);
INSERT INTO Loans (customer_id, loan_amount, loan_type, status) VALUES
(1,200000,'Home Loan','Approved'),
(2,50000,'Personal Loan','Pending'),
(3,150000,'Car Loan','Approved'),
(4,80000,'Education Loan','Approved'),
(5,120000,'Home Loan','Pending'),
(6,40000,'Personal Loan','Rejected'),
(7,220000,'Home Loan','Approved'),
(8,60000,'Car Loan','Pending'),
(9,90000,'Education Loan','Approved'),
(10,30000,'Personal Loan','Approved'); 
SELECT * FROM Customers; 
SELECT c.name, a.balance
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id;
SELECT a.account_id, t.transaction_type, t.amount, t.transaction_date
FROM Transactions t
JOIN Accounts a ON t.account_id = a.account_id;
SELECT c.name, SUM(a.balance) AS total_balance
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
GROUP BY c.name; 
SELECT c.name, l.loan_amount, l.status
FROM Loans l
JOIN Customers c ON l.customer_id = c.customer_id; 
SELECT * FROM Customers
WHERE address = 'Delhi';
SELECT * FROM Accounts
WHERE account_type = 'Savings';
SELECT * FROM Transactions
WHERE amount > 5000;
SELECT c.name, a.account_type, a.balance
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id;
SELECT c.name, l.loan_amount, l.loan_type, l.status
FROM Customers c
JOIN Loans l ON c.customer_id = l.customer_id;
SELECT c.name, t.transaction_type, t.amount, t.transaction_date
FROM Transactions t
JOIN Accounts a ON t.account_id = a.account_id
JOIN Customers c ON a.customer_id = c.customer_id;
SELECT SUM(balance) AS total_bank_balance
FROM Accounts; 
SELECT AVG(balance) AS avg_balance
FROM Accounts;
SELECT MAX(balance) AS highest_balance
FROM Accounts;
SELECT COUNT(*) AS total_customers
FROM Customers;
SELECT c.name, SUM(a.balance) AS total_balance
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
GROUP BY c.name;
SELECT account_type, COUNT(*) AS total_accounts
FROM Accounts
GROUP BY account_type;
SELECT account_id, SUM(amount) AS total_transaction
FROM Transactions
GROUP BY account_id; 