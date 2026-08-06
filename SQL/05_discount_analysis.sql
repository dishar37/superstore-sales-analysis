/*
====================================================
Superstore Sales Analysis
File: 05_discount_analysis.sql
Purpose:
Analyze relationship between discount and profitability.
====================================================
*/

SELECT

discount,

COUNT(*) AS number_of_orders,

SUM(sales) AS total_sales,

SUM(profit) AS total_profit,

AVG(profit) AS average_profit,

ROUND(
SUM(profit)/SUM(sales)*100,
2
) AS profit_margin

FROM orders

GROUP BY discount

ORDER BY discount;
