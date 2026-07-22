-- 1045. Customers Who Bought All Products
-- 링크:https://leetcode.com/problems/customers-who-bought-all-products/description/
-- 작성일: 2026.07.22

SELECT customer_id
FROM Customer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (
    SELECT COUNT(*)
    FROM Product
);