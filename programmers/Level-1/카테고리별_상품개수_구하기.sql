-- 카테고리 별 상품 개수 구하기
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131529
-- 작성일: 2026.05.20. 10:06:29

SELECT
    LEFT(product_code,2) AS "CATEGORY",
    COUNT(*) AS "PRODUCTS"
FROM product
GROUP BY LEFT(product_code,2)
ORDER BY product_code;