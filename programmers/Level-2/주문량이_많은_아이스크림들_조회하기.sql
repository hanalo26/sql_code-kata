-- 주문량이 많은 아이스크림들 조회하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133027
-- 작성일: 2026.08.04

WITH Tables_PRO AS (
    SELECT 
        F.FLAVOR AS FLAVOR,
        (SUM(F.TOTAL_ORDER)/COUNT(J.SHIPMENT_ID)) + SUM(J.TOTAL_ORDER) AS TOTAL_ORDERS
    FROM FIRST_HALF F
    JOIN JULY J ON F.FLAVOR = J.FLAVOR
    GROUP BY F.FLAVOR
    -- JOIN 과정에서 행이 늘어나면서 결과가 뻥튀기 되는것을 방지하기 위해 상반기 판매량/7월 배달ID로 계산한 뒤, 7월 판매량을 더함
)

SELECT FLAVOR
FROM Tables_PRO
ORDER BY TOTAL_ORDERS DESC
LIMIT 3;