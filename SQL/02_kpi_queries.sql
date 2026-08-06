/*
====================================================
Superstore Sales Analysis
File: 02_kpi_queries.sql
Purpose:
Dashboard KPI calculations.
====================================================
*/

-- Total Sales

SELECT
SUM(sales) AS total_sales
FROM orders;

-- Total Profit

SELECT
SUM(profit) AS total_profit
FROM orders;

-- Total Orders

SELECT
COUNT(DISTINCT order_id) AS total_orders
FROM orders;

-- Profit Margin

SELECT
ROUND(
SUM(profit)/SUM(sales)*100,
2
) AS profit_margin
FROM orders;
