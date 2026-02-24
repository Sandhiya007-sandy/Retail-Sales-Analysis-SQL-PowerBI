
Retail Sales Performance Analysis using SQL for data extraction and Power BI for interactive dashboard visualization. Includes database design, SQL queries, KPIs, and business insights.

 🛒 Retail Sales Performance Analysis

SQL + Power BI Business Intelligence Project


📌 Project Overview

This project analyzes retail sales performance using SQL and Power BI.

The retail company stores transactional sales data in a relational database. SQL was used to extract, aggregate, and analyze the data. The results were then imported into Power BI to build an interactive dashboard.

This project demonstrates:

* Database design
* SQL querying & joins
* Aggregation & business metrics
* KPI development
* Power BI dashboard creation
* Business insight generation

 🗂 Database Structure

The database `RetailSalesDB` contains three tables:

1️⃣ Customers

* CustomerID (Primary Key)
* CustomerName
* Gender
* Age
* City

2️⃣ Products

* ProductID (Primary Key)
* ProductName
* Category
* Price

3️⃣ Sales

* SaleID (Primary Key)
* CustomerID (Foreign Key)
* ProductID (Foreign Key)
* Quantity
* SaleDate

🔗 Relationships

* Sales → Customers (CustomerID)
* Sales → Products (ProductID)

The schema follows relational database principles with proper foreign key constraints.

🧮 SQL Analysis Performed

The following SQL operations were performed:

* INNER JOIN
* GROUP BY
* SUM()
* COUNT()
* ORDER BY
* Date Formatting

📊 Business Queries Implemented

✔ Total Revenue
✔ Category-wise Revenue
✔ Monthly Revenue Trend
✔ Product-wise Quantity Sold
✔ City-wise Revenue

📈 Key Metrics Calculated

* **Total Revenue**
* **Total Orders**
* **Total Quantity Sold**
* **Average Order Value**

KPI Formula:

Average Order Value = Total Revenue / Total Orders

📊 Power BI Dashboard Features

The dashboard includes:

* KPI Cards (Revenue, Orders, Quantity, AOV)
* Monthly Sales Trend (Line Chart)
* Category-wise Revenue (Bar Chart)
* Product-wise Sales (Bar Chart)
* City-wise Revenue Analysis
* Interactive Filters

🔍 Key Insights

* Electronics category generates the highest revenue.
* Laptop and Mobile Phone are top revenue-driving products.
* Revenue varies across cities.
* Monthly sales show trend fluctuations.
* Average Order Value indicates strong per-transaction revenue.


💡 Business Recommendations

* Focus marketing on high-revenue categories.
* Increase stock for top-selling products.
* Improve performance in lower-revenue cities.
* Monitor monthly trends for better forecasting.
* Optimize pricing strategies.



🛠 Tools Used

* SQL Server
* Power BI
* Relational Database Modeling
* Data Aggregation & Analysis



Tell me what you need next 🚀
