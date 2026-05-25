#  Food Delivery Business Analytics System

##  Overview
This project is an end-to-end **Data Warehouse and Business Analytics system** built for a food delivery business. It transforms raw transactional data (OLTP) into meaningful business insights using a **Star Schema Data Warehouse, ETL process, and Power BI dashboard**.

---

##  Business Problem
Food delivery systems generate large amounts of transactional data, but it is difficult to analyze directly from OLTP systems. Business users need insights such as:

- Total revenue and order trends
- Top-selling products
- Customer behavior analysis
- Restaurant performance
- City-based sales analysis

---

##  System Architecture

OLTP Database → ETL Process → Data Warehouse → Power BI Dashboard

---

##  Technologies Used

- MySQL (OLTP + Data Warehouse)
- SQL (ETL Processing)
- Data Warehousing (Star Schema Design)
- Power BI (Data Visualization)

---

##  Data Warehouse Design

### Fact Table
- `fact_sales` (transaction-level sales data)

### Dimension Tables
- `dim_customer` (customer details)
- `dim_product` (product details)
- `dim_restaurant` (restaurant details)
- `dim_time` (date-based analysis)

---

##  ETL Process

1. **Extract**
   - Data extracted from OLTP tables (orders, order_items, users, products, restaurants)

2. **Transform**
   - Join multiple tables
   - Calculate total amount (quantity × price)
   - Extract date components (day, month, year)

3. **Load**
   - Load cleaned data into Data Warehouse tables

---

##  Power BI Dashboard Features

- Total Revenue KPI
- Total Orders KPI
- Average Order Value
- Monthly Sales Trend
- Top Selling Products
- Sales by City
- Restaurant Performance Analysis


---

##  Key Insights

- Coke is the highest revenue-generating product
- Yangon shows the highest number of orders



##  Future Improvements

- Add real-time streaming data pipeline
- Implement Python-based predictive analytics
