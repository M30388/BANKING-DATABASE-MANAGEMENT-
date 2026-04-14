# BANKING-DATABASE-MANAGEMENT-
BANKING DATABASE MANAGENET SYSTEM USING SQL
# 🏦 Banking Database Management System (SQL Project)

## 📌 Project Overview
This project is a **Banking Database Management System** built using SQL.  
It simulates real-world banking operations like managing customers, accounts, transactions, and loans.

The goal of this project is to demonstrate strong understanding of:
- Database design
- SQL queries
- Data relationships
- Real-world business logic

---

## 🛠️ Technologies Used
- SQL (MySQL)
- DBMS Concepts

---

## 🗂️ Database Structure

### 👤 Customers
Stores customer personal details.
- customer_id (Primary Key)
- name
- email
- phone
- address

### 🏦 Accounts
Stores account information.
- account_id (Primary Key)
- customer_id (Foreign Key)
- account_type (Savings/Current)
- balance

### 💸 Transactions
Tracks all transactions.
- transaction_id (Primary Key)
- account_id (Foreign Key)
- transaction_type (Deposit/Withdrawal)
- amount
- transaction_date

### 💳 Loans
Stores loan details.
- loan_id (Primary Key)
- customer_id (Foreign Key)
- loan_amount
- loan_type
- status

---

## 📊 Features
✔ Customer Management  
✔ Account Management  
✔ Transaction Tracking  
✔ Loan Management  
✔ Data Analysis using SQL Queries  

---

## 📁 Project Files
