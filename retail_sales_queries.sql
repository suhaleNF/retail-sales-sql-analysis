-- Retail Sales SQL Analysis

-- 1 Total Revenue
SELECT SUM(quantity * unit_price) AS total_revenue
FROM retail_sales;


-- 2 Top 10 Products
SELECT description, SUM(quantity) AS total_sold
FROM retail_sales
GROUP BY description
ORDER BY total_sold DESC
LIMIT 10;


-- 3 Top Customers
SELECT customer_id, SUM(quantity * unit_price) AS total_spent
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;


-- 4 Revenue by Country
SELECT country, SUM(quantity * unit_price) AS total_revenue
FROM retail_sales
GROUP BY country
ORDER BY total_revenue DESC;


-- 5 Monthly Sales Trend
SELECT MONTH(invoice_date) AS month,
SUM(quantity * unit_price) AS monthly_revenue
FROM retail_sales
GROUP BY month
ORDER BY month;
