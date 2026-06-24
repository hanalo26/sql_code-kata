-- 가격대별 상품 개수 구하기
-- 링크:https://school.programmers.co.kr/learn/courses/30/lessons/131530
-- 작성일: 2026.06.24

SELECT 
	FLOOR(PRICE/10000)*10000 AS PRICE_GROUP,
	COUNT(*) AS PRODUCTS
FROM PRODUCT 
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP;