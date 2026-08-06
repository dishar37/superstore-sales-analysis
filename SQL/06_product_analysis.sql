/*
====================================================
Superstore Sales Analysis
File: 06_product_analysis.sql
Purpose:
Identify most profitable and least profitable products.
====================================================
*/

-- Top 10 Most Profitable Products

SELECT

product_name,

SUM(profit) AS total_profit

FROM orders

GROUP BY product_name

ORDER BY total_profit DESC

LIMIT 10;

-----------------------------------------------------

-- Top 10 Loss Making Products

SELECT

product_name,

SUM(profit) AS total_profit

FROM orders

GROUP BY product_name

ORDER BY total_profit ASC

LIMIT 10;
