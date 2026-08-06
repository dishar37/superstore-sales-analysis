/*
===========================================================
Project : Superstore Sales Analysis
File    : 01_data_cleaning.sql
Author  : Disha Rana
Purpose : Perform initial data quality checks before analysis.
===========================================================
*/

-- Total records
SELECT COUNT(*) AS total_orders
FROM orders;

-- Check for duplicate Row IDs
SELECT row_id, COUNT(*)
FROM orders
GROUP BY row_id
HAVING COUNT(*) > 1;

-- Check NULL values

SELECT *
FROM orders
WHERE
order_id IS NULL
OR customer_id IS NULL
OR sales IS NULL
OR profit IS NULL;

-- Count unique customers

SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM orders;

-- Count unique products

SELECT COUNT(DISTINCT product_id) AS unique_products
FROM orders;
