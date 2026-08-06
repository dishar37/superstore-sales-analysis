/*
====================================================
Superstore Sales Analysis
File: 07_customer_analysis.sql
Purpose:
Customer-level sales analysis.
====================================================
*/

-- Top 10 Customers

SELECT

customer_name,

SUM(sales) AS total_sales,

SUM(profit) AS total_profit

FROM orders

GROUP BY customer_name

ORDER BY total_sales DESC

LIMIT 10;

-----------------------------------------------------

-- Top 3 Customers in Each Region

WITH ranked_customers AS (

SELECT

region,

customer_name,

SUM(sales) AS total_sales,

ROW_NUMBER() OVER(

PARTITION BY region

ORDER BY SUM(sales) DESC

) AS rank

FROM orders

GROUP BY region, customer_name

)

SELECT *

FROM ranked_customers

WHERE rank <=3

ORDER BY region, rank;
