-- 1164. Product Price at a Given Date
-- 링크: https://leetcode.com/problems/product-price-at-a-given-date/description/
-- 작성일: 2026.07.27

/*
20219-08-16 이전에 10달러에서 가격이 변경된 이력이 있다면 가장 최근에 변경된 가격으로 변경한다.
*/

WITH PriceChange AS (
    SELECT 
        product_id,
        new_price,
        ROW_NUMBER() OVER (PARTITION BY product_id ORDER BY change_date DESC) AS rn
    FROM Products
    WHERE change_date <= "2019-08-16"
)

SELECT 
    p.product_id, 
    IFNULL(c.new_price, 10) AS price
FROM (
    SELECT DISTINCT product_id
    FROM Products
) AS p
LEFT JOIN PriceChange c
ON p.product_id = c.product_id AND c.rn = 1