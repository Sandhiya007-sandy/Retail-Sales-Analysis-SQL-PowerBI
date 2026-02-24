USE RetailSalesDB;

-- Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Gender VARCHAR(10),
    Age INT,
    City VARCHAR(50)
);

-- Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

-- Sales Table
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    SaleDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


INSERT INTO Customers VALUES
(1, 'Amit Sharma', 'Male', 28, 'Mumbai'),
(2, 'Priya Singh', 'Female', 32, 'Delhi'),
(3, 'Rahul Verma', 'Male', 40, 'Bangalore'),
(4, 'Sneha Reddy', 'Female', 25, 'Chennai'),
(5, 'Arjun Patel', 'Male', 35, 'Hyderabad');


INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 55000),
(102, 'Mobile Phone', 'Electronics', 20000),
(103, 'Headphones', 'Accessories', 2000),
(104, 'Office Chair', 'Furniture', 7000),
(105, 'Desk Lamp', 'Furniture', 1500);

INSERT INTO Sales VALUES
(1001, 1, 101, 1, '2023-01-15'),
(1002, 2, 102, 2, '2023-02-10'),
(1003, 3, 103, 3, '2023-03-05'),
(1004, 4, 104, 1, '2023-03-20'),
(1005, 5, 105, 4, '2023-04-01'),
(1006, 1, 102, 1, '2023-04-15'),
(1007, 2, 103, 2, '2023-05-10'),
(1008, 3, 101, 1, '2023-06-25'),
(1009, 4, 105, 3, '2023-07-05'),
(1010, 5, 104, 2, '2023-08-18');

SELECT 
    SUM(p.Price * s.Quantity) AS TotalRevenue
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID;

SELECT 
    p.Category,
    SUM(p.Price * s.Quantity) AS CategoryRevenue
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY p.Category;


SELECT 
    FORMAT(SaleDate, 'yyyy-MM') AS Month,
    SUM(p.Price * s.Quantity) AS MonthlyRevenue
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY FORMAT(SaleDate, 'yyyy-MM')
ORDER BY Month;


SELECT 
    p.ProductName,
    SUM(s.Quantity) AS TotalQuantitySold
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalQuantitySold DESC;


SELECT 
    c.City,
    SUM(p.Price * s.Quantity) AS CityRevenue
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
JOIN Customers c ON s.CustomerID = c.CustomerID
GROUP BY c.City
ORDER BY CityRevenue DESC;










