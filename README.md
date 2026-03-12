# retail-sales-sql-analysis

Retail Sales Data Analysis Using SQL

Project Overview

This project analyzes retail transaction data using SQL to uncover insights about sales performance, customer purchasing behavior, and product demand.
The analysis focuses on answering important business questions such as identifying top-selling products, high-value customers, and sales trends.

Dataset Description

The dataset contains retail transaction records with the following fields:

Column	      Description

invoice_no     Unique order number     
stock_code	   Product code
description	   Product name
quantity	      Number of items purchased
invoice_date 	Date of purchase
unit_price  	Price per item
customer_id	   Unique customer identifier
country	      Country where purchase was made

Business Questions

The analysis aims to answer the following questions:

1.What is the total revenue generated?
2.Which products sell the most?
3.Who are the top customers by revenue?
4.Which countries generate the most revenue?
5.What are the monthly sales trends?
6.Which orders have the highest value?
7.What percentage of customers purchase only once?



SQL QUERIES USED

--1.TOTAL REVENUE:

SELECT SUM(quantity * unit_price) AS total_revenue
FROM retail_sales;

--2.TOP 10 PRODUCTS BY QUANTITY SOLD:

SELECT description, SUM(quantity) AS total_sold
FROM retail_sales
GROUP BY description
ORDER BY total_sold DESC
LIMIT 10;

--3.TOP 10 CUSTOMERS BY SPENDING:

SELECT customer_id, SUM(quantity * unit_price) AS total_spent
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;

--4.REVENUE BY COUNTRY:

SELECT country, SUM(quantity * unit_price) AS total_revenue
FROM retail_sales
GROUP BY country
ORDER BY total_revenue DESC;

--5.MONTHLY SALES TREND:

SELECT MONTH(invoice_date) AS month,
SUM(quantity * unit_price) AS monthly_revenue
FROM retail_sales
GROUP BY month
ORDER BY month;

#Insights

1.A small number of products contribute significantly to overall sales.
2.A few customers generate a large portion of the total revenue.
3.Certain countries dominate total sales performance.
4.Monthly analysis reveals fluctuations in purchasing patterns.
5.Many customers make only a single purchase, indicating potential opportunities to improve customer retention.

SKILLS DEMONSTRATED

# SQL Data Analysis
# Data Aggregation (SUM, COUNT, AVG)
# GROUP BY and HAVING analysis
# Window Functions (RANK, ROW_NUMBER)
# CASE Statements
# Business Data Interpretation

## Dataset Source

The dataset used in this project is the **Online Retail Dataset**, which contains transactional data from a UK-based online retail store.

Source:
https://archive.ics.uci.edu/ml/datasets/online+retail







   
