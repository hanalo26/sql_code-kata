-- 1070. Product Sales Analysis III
-- 링크:https://leetcode.com/problems/product-sales-analysis-iii/description/
-- 작성일: 2026.07.22


-- 서브쿼리 사용 VER.
SELECT 
    product_id,
    year AS first_year,
    quantity,
    price
FROM Sales
WHERE (product_id, year) IN (
    SELECT product_id, MIN(year)
    FROM Sales
    GROUP BY product_id
);

-- 윈도우 함수 활용 VER.
WITH RANKED_Sales AS (
    SELECT 
        product_id,
        year AS first_year,
        quantity,
        price,
        RANK() OVER (PARTITION BY product_id ORDER BY year ASC) AS rn
    FROM Sales
)

SELECT
    product_id,
    first_year,
    quantity,
    price
FROM RANKED_Sales
WHERE rn = 1;