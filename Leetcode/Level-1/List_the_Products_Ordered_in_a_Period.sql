-- 1327. List the Products Ordered in a Period
-- 링크: https://leetcode.com/problems/list-the-products-ordered-in-a-period/description/
-- 작성일: 2026.06.28

SELECT
    r.product_name,
    SUM(o.unit) AS unit
FROM products AS r
JOIN orders AS o ON r.product_id = o.product_id
WHERE o.order_date LIKE "2020-02%"
GROUP BY r.product_id
HAVING SUM(o.unit) >= 100; 