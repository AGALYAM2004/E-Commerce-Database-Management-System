# E-Commerce-Database-Management-System

Project Overview
This project demonstrates the design and implementation of a simple **E-Commerce Database Management System** using **MySQL**. The database stores customer, product, and order information and performs various SQL operations such as data retrieval, filtering, sorting, aggregation, and string/date functions.

The project is designed to strengthen SQL fundamentals by working with real-world e-commerce scenarios.

---

Objectives

- Design a relational database using MySQL.
- Create tables with Primary and Foreign Key constraints.
- Insert sample business data.
- Perform data analysis using SQL queries.
- Practice SQL functions, filtering, sorting, and aggregate operations.

---

Technologies Used

- MySQL
- SQL
- MySQL Workbench

---

Database Schema

### 1. CustomersData
Stores customer details.

| Column | Data Type |
|---------|-----------|
| CustomerID | INT (Primary Key, Auto Increment) |
| CustomerName | VARCHAR(50) |
| Age | INT |
| Gender | VARCHAR(30) |
| City | VARCHAR(40) |

---

### 2. ProductsData
Stores product information.

| Column | Data Type |
|---------|-----------|
| ProductID | INT (Primary Key) |
| ProductName | VARCHAR(50) |
| Category | VARCHAR(30) |
| Price | INT |

---

### 3. OrdersData
Stores order details.

| Column | Data Type |
|---------|-----------|
| OrderID | INT (Primary Key) |
| CustomerID | INT (Foreign Key) |
| ProductID | INT (Foreign Key) |
| OrderDate | DATE |
| TotalAmount | INT |

---

 Entity Relationship

CustomersData
      │
      │ CustomerID
      ▼
OrdersData
      ▲
      │ ProductID
      │
ProductsData

---

SQL Concepts Covered

### Database Operations
- CREATE DATABASE
- USE DATABASE

### Table Operations
- CREATE TABLE
- PRIMARY KEY
- FOREIGN KEY
- AUTO_INCREMENT

### Data Manipulation
- INSERT INTO

### Aggregate Functions
- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

### String Functions
- UPPER()
- LOWER()
- LENGTH()
- CONCAT()

### Date Functions
- YEAR()
- MONTH()
- NOW()

### Mathematical Functions
- ROUND()

### Filtering
- WHERE

### Sorting
- ORDER BY

### Limiting Records
- LIMIT

### Removing Duplicates
- DISTINCT

###Column Aliasing
- AS

---

 SQL Queries Implemented

✔ Count total customers

✔ Count total products

✔ Highest and lowest product price

✔ Total sales amount

✔ Average product price

✔ Display unique product names

✔ Display first two products

✔ Rename columns using aliases

✔ Find product name length

✔ Convert customer names to uppercase

✔ Convert categories to lowercase

✔ Round order amount values

✔ Multiply product prices

✔ Extract year and month from order date

✔ Display current date and time

✔ Filter products based on price

✔ Find customers from a specific city

✔ Display products by category

✔ Filter orders by amount

✔ Sort products by price

✔ Sort customers alphabetically

✔ Count products in Electronics category

✔ Average order amount

✔ Maximum order amount

✔ Minimum order amount

✔ Calculate product price after GST (18%)

✔ Concatenate customer name and city

---

Learning Outcomes

Through this project, I learned:

- Designing relational databases
- Implementing Primary and Foreign Keys
- Writing SQL queries for business analysis
- Using Aggregate Functions
- Applying String and Date Functions
- Filtering and Sorting data
- Working with aliases and mathematical operations
- Understanding basic database relationships

---

Future Enhancements

- Add Suppliers table
- Add Payments table
- Add Inventory Management
- Create SQL Views
- Use Stored Procedures
- Implement Triggers
- Create Indexes for optimization
- Perform JOIN operations across multiple tables
- Generate advanced sales reports

---

Author

Agalya Maheswaran
Data Analyst


---

⭐ If you found this project useful, feel free to star the repository.
