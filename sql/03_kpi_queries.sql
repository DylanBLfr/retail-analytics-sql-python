-- 03_kpi_queries.sql

-- 1) Monthly revenue
WITH order_revenue AS (
  SELECT
    o.order_id,
    DATE(substr(o.order_date,1,7) || '-01') AS month,
    SUM(oi.quantity * oi.unit_price) AS revenue
  FROM orders o
  JOIN order_items oi ON oi.order_id = o.order_id
  GROUP BY 1,2
)
SELECT month, ROUND(SUM(revenue),2) AS total_revenue
FROM order_revenue
GROUP BY month
ORDER BY month;

-- 2) Top 5 products by revenue
SELECT
  p.product_name,
  ROUND(SUM(oi.quantity * oi.unit_price),2) AS revenue
FROM order_items oi
JOIN products p ON p.product_id = oi.product_id
GROUP BY 1
ORDER BY revenue DESC
LIMIT 5;

-- 3) Revenue by country
SELECT
  c.country,
  ROUND(SUM(oi.quantity * oi.unit_price),2) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN customers c ON c.customer_id = o.customer_id
GROUP BY 1
ORDER BY revenue DESC;

-- 4) New customers by month
SELECT
  DATE(substr(signup_date,1,7) || '-01') AS month,
  COUNT(*) AS new_customers
FROM customers
GROUP BY 1
ORDER BY 1;

-- 5) Average order value (AOV)
WITH order_totals AS (
  SELECT o.order_id, SUM(oi.quantity * oi.unit_price) AS order_value
  FROM orders o JOIN order_items oi ON oi.order_id = o.order_id
  GROUP BY 1
)
SELECT ROUND(AVG(order_value),2) AS avg_order_value
FROM order_totals;
