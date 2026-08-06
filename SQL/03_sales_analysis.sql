/*
====================================================
Superstore Sales Analysis
File: 03_sales_analysis.sql
Purpose:
Sales trend analysis.
====================================================
*/

-- Monthly Sales Trend

SELECT

EXTRACT(YEAR FROM order_date) AS year,

EXTRACT(MONTH FROM order_date) AS month,

SUM(sales) AS total_sales,

SUM(profit) AS total_profit

FROM orders

GROUP BY year, month

ORDER BY year, month;
