# Coffee Shop Sales Analysis Dashboard | MySQL + Excel

An end-to-end retail sales analytics project using MySQL for data cleaning and querying, and Excel for KPI analysis, pivot tables, and interactive dashboard creation for a coffee shop business.

## Project Overview
This project analyzes coffee shop transaction-level sales data to uncover revenue trends, customer purchasing patterns, and key business drivers. The goal is to help a coffee shop better understand what products sell best, when peak sales occur, and how overall performance changes over time.

The workflow covered end-to-end analytics: starting with SQL-based data cleaning and exploration in MySQL, followed by KPI calculations and interactive dashboard building in Excel using pivot tables and timeline filters.

## Tools Used
- MySQL — Data querying, cleaning, and exploratory analysis
- Excel — Pivot tables, KPI calculations, dashboard design, and visualizations

## Dashboard
<img width="620" height="347" alt="dashboard_preview" src="https://github.com/user-attachments/assets/3eead9e7-4f2e-4336-a564-31f50724fffd" />

## Key Metrics
| Metric | Value | Insights / Context |
|--------|-------|---------------------|
| Total Revenue | $264,006 | Driven heavily by the Coffee product category. |
| Total Orders | 58,202 | Peak transaction volumes occur during weekdays. |
| Total Items Sold | 82,686 | Mostly driven by large and regular beverage sizes. |
| Avg. Order Value | $4.54 | Reflects typical single-to-double item purchases. |
| Avg. Items Per Order | 1.42 | Customers usually buy one drink or pair it with a snack. |
| Busiest Days | Mon / Wed | Highest volumes at 9,162 (Mon) and 9,153 (Wed). |
| Peak Hours | 8:00 AM - 10:00 AM | 10:00 AM is the peak hour with 5,616 orders. |
| Top Category | Coffee | Accounts for 39.86% of total sales. |
| Top Size | Large | Contributes 35.21% of total revenue. |
| Top Product | Brewed Chai Tea | Best seller with 10,545 units sold. |
| Bottom Product | Clothing | Worst-performing item with only 30 units sold. |

## SQL Queries
All KPIs were first validated in SQL Server before being built in Excel to ensure dashboard numbers are accurate.

Queries cover:
- Total Revenue (Overall)
- Average Order Value
- Total Items Sold
- Total Orders
- Average Items per Order
- Daily Order Trends (Day of Week analysis)
- Hourly Order Trends
- Sales % by Product Category
- Sales % by Product Size
- Total Quantity Sold by Product Category
- Top 5 Best-Selling Products
- Top 5 Worst-Selling Products



