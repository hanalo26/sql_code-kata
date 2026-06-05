-- 1068. Product Sales Analysis I
-- 링크: https://leetcode.com/problems/product-sales-analysis-i/description/
-- 작성일: 2026.06.05

SELECT 
    p.product_name,
    s.year,
    s.price
FROM sales AS s
JOIN product AS p ON s.product_id=p.product_id