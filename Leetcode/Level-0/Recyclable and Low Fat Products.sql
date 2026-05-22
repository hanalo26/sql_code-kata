-- 문제: 1757. Recyclable and Low Fat Products
-- 문제 링크: https://leetcode.com/problems/recyclable-and-low-fat-products/
-- 풀이 날짜: 2026.05.22 13:19:33

SELECT product_id
FROM products
WHERE low_fats = 'Y' AND recyclable = 'Y' 