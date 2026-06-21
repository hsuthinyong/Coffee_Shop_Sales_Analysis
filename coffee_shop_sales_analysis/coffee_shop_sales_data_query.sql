SELECT*
FROM coffee_shop_sales

--Total revenue
SELECT 
    SUM(unit_price * transaction_qty) AS Total_Revenue
FROM coffee_shop_sales

--Average order value
SELECT 
    SUM(unit_price * transaction_qty) * 1.0 / COUNT(DISTINCT transaction_id) AS average_order_value
FROM coffee_shop_sales;

--Total items sold
SELECT SUM(transaction_qty) AS Total_Items_Sold
FROM coffee_shop_sales;

--Total items sold
SELECT COUNT(DISTINCT transaction_id) AS Total_Orders
FROM coffee_shop_sales;

--Total Orders
SELECT SUM(transaction_qty) * 1.0 / COUNT(DISTINCT transaction_id) AS Avg_Items_Per_Order 
FROM coffee_shop_sales;

--Daily trend for total orders 
SELECT 
  DATENAME(DW, transaction_date) AS Order_Day,
  COUNT(DISTINCT transaction_id) AS Total_Orders
FROM coffee_shop_sales
WHERE transaction_date IS NOT NULL
GROUP BY DATENAME(DW, transaction_date), DATEPART(DW, transaction_date)
ORDER BY DATEPART(DW, transaction_date);

--Hourly trend for Total Orders 
SELECT 
    DATEPART(HOUR, transaction_time) AS Order_Hour,
    COUNT(DISTINCT transaction_id) AS Total_Orders
FROM coffee_shop_sales
GROUP BY DATEPART(HOUR, transaction_time)
ORDER BY DATEPART(HOUR, transaction_time)

--Percentage of Sales by Product Category 
SELECT 
    product_category,
    SUM(transaction_qty * unit_price) * 100.0 /
    (SELECT SUM(transaction_qty * unit_price) 
     FROM coffee_shop_sales) AS Total_Sales
FROM coffee_shop_sales
GROUP BY product_category;

-- % of Sales by Beverage Size
SELECT 
    product_size,
    SUM(transaction_qty * unit_price) * 100.0 /
    (SELECT SUM(transaction_qty * unit_price)
     FROM coffee_shop_sales
     WHERE product_size IS NOT NULL) AS Sales_Percentage
FROM coffee_shop_sales
WHERE product_size IS NOT NULL
GROUP BY product_size;

--Total Quantity sold by each product category
SELECT 
    product_category,
    SUM(transaction_qty) AS total_quantity
FROM coffee_shop_sales
GROUP BY product_category
ORDER BY total_quantity DESC;

--Top 5 best sellers 
SELECT TOP 5
    product_type,
    SUM(transaction_qty) AS Total_Sold
FROM coffee_shop_sales
GROUP BY product_type
ORDER BY Total_Sold DESC;

--Top 5 worst sellers
SELECT TOP 5
    product_type,
    SUM(transaction_qty) AS Total_Sold
FROM coffee_shop_sales
GROUP BY product_type
ORDER BY Total_Sold ASC;











