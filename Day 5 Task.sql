CREATE DATABASE EcommerceDB;
USE EcommerceDB;
CREATE TABLE CustomersData(CustomerID INT PRIMARY KEY AUTO_INCREMENT,
CustomerName VARCHAR(50),
AGE INT,
Gender VARCHAR(30),
City VARCHAR(40));

INSERT INTO CustomersData(CustomerName,AGE,Gender,City)
VALUE("Arjun",28,"Male","Chennai"),
("Priya",31,"Female","Coimbatore"),
("Rahul",26,"Male","Madurai"),
("Sneha",24,"Female","Selam"),
("Kavin",35,"Male","trichy");

CREATE TABLE ProductsData(ProductID INT PRIMARY KEY,
ProductName VARCHAR(50),
Category VARCHAR(30),
Price INT);

INSERT INTO ProductsData(ProductID,ProductName,Category,Price)
VALUE(101,"Laptop","Electronics",55000),
(102,"Mobile","Electronics",22000),
(103,"Shoes","Fashion",2500),
(104,"Watch","Accessories",3200),
(105,"Chair","Furniture",4500);

CREATE TABLE OrdersData(OrderID INT PRIMARY KEY,
CustomerID INT,
FOREIGN KEY(CustomerID) REFERENCES CustomersData(CustomerID),
ProductID INT,
FOREIGN KEY(ProductID) REFERENCES ProductsData(ProductID),
OrderDate DATE,
TotalAmount INT);

INSERT INTO OrdersData(OrderID,CustomerID,ProductID,OrderDate,TotalAmount)
VALUE(1001,1,101,"2026-05-10",55000),
(1002,2,103,"2026-05-11",2500),
(1003,3,102,"2026-05-12",22000),
(1004,4,104,"2026-05-13",3200),
(1005,5,105,"2026-05-14",4500);

#1.Count Total Number Of Customers
SELECT COUNT(CustomerID) AS Total_Customers FROM CustomersData;

#2.Count Total number of Products
SELECT COUNT(ProductID) AS Total_Product FROM ProductsData;

#3.Highest and Lowest Product Price
SELECT MAX(Price) AS Highest_Price,MIN(Price) AS Lowest_Price FROM ProductsData;

#4.Total Sales Amount from Orders Table
SELECT SUM(TotalAmount) AS Total_Amt FROM OrdersData;

#5.Average product price
SELECT AVG(Price) AS Avg_Price FROM ProductsData;

#6.Unique Product Categories
SELECT DISTINCT(ProductName) AS Unique_Product FROM ProductsData;

#7.First 2 Products Only
SELECT * FROM ProductsData LIMIT 2;

#8.Rename CustomerName as Customer and City as Location
SELECT CustomerName AS Customer,City AS Location FROM CustomersData;

#9.Rename ProductName as Item and Price as Cost
SELECT ProductName AS Item,Price AS Cost FROM ProductsData;

#10.Length of each Product name
SELECT LENGTH(ProductName) AS Length_Product FROM ProductsData;

#11.Display all customer names in uppercase:
SELECT UPPER(CustomerName) AS Upper_customerName FROM CustomersData;

#12.Display All Categories Lowercase:
SELECT LOWER(Category) AS Lower_Category FROM ProductsData;

#13.Divide Total Amount by 4 and Round the value:
SELECT CustomerID,ROUND(TotalAmount / 4) AS Round_TotalAmount FROM OrdersData;

#14.Multiply Product Price by 2
SELECT ProductName,Price * 2 AS Multiply_Price FROM ProductsData;

#15.Show OrderId with YEAR and MONTH from Orderdate:
SELECT OrderID,YEAR(OrderDate) AS Year_Order,MONTH(OrderDate) AS Month_Order FROM OrdersData;

#16.Show Current Date and Time
SELECT NOW();

#17.Show Product With Price Greater than 5000
SELECT ProductName From ProductsData
WHERE Price>5000;

#18.Show Customers From Chennai
SELECT CustomerName FROM CustomersData
WHERE City="Chennai";

#19.Show Products Under Electronics Category
SELECT ProductName FROM ProductsData
WHERE Category="Electronics";

#20.Show Orders Where TotalAmount Above 10000
SELECT OrderID FROM OrdersData
WHERE TotalAmount>10000;

#21.Display Products by Price Descending Order
SELECT ProductName FROM ProductsData
ORDER BY Price DESC;

#22.Show customers Sorted By name
SELECT CustomerName FROM CustomersData
Order by CustomerName ASC;

#23.Count How Many Products Belongs to elctronics Category
SELECT COUNT(ProductName) AS Electronics_Category FROM ProductsData
WHERE Category="Electronics";

#24.Average Order Amount
SELECT AVG(TotalAmount) AS Avg_Amount FROM OrdersData;

#25.Maximun Order Amount
SELECT MAX(TotalAmount) AS Max_Amount FROM OrdersData;

#26.Minimum Order Amount
SELECT MIN(TotalAmount) AS Min_Amount FROM OrdersData;

#27.Show Product Price After adding GST 18%
SELECT ProductName,Price * 1.18 AS GST_Price FROM productsData;

#28.Show Customer Names With City Together
SELECT CustomerID,CONCAT(CustomerName,"-",City) AS Concat_customer_City FROM CustomersData;