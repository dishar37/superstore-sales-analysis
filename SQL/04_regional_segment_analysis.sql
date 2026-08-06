/*
====================================================
Superstore Sales Analysis
File: 04_regional_segment_analysis.sql
Purpose:
Regional, Category and Segment performance.
====================================================
*/

-- Regional Sales

SELECT

region,

SUM(sales) AS total_sales,

SUM(profit) AS total_profit,

ROUND(SUM(profit)/SUM(sales)*100,2) AS profit_margin

FROM orders

GROUP BY region

ORDER BY total_sales DESC;

----------------------------------------------------

-- Category Performance

SELECT

category,

SUM(sales) AS total_sales,

SUM(profit) AS total_profit,

ROUND(SUM(profit)/SUM(sales)*100,2) AS profit_margin

FROM orders

GROUP BY category

ORDER BY total_sales DESC;

----------------------------------------------------

-- Segment Performance

SELECT

segment,

SUM(sales) AS total_sales,

SUM(profit) AS total_profit,

ROUND(SUM(profit)/SUM(sales)*100,2) AS profit_margin

FROM orders

GROUP BY segment

ORDER BY total_sales DESC;
