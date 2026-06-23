-- 성분으로 구분한 아이스크림 총 주문량
-- 링크:https://school.programmers.co.kr/learn/courses/30/lessons/133026
-- 작성일: 2026.06.23

SELECT
    i.INGREDIENT_TYPE,
    SUM(f.TOTAL_ORDER) AS TOTAL_ORDER
FROM FIRST_HALF AS f
JOIN ICECREAM_INFO AS i ON f.FLAVOR = i.FLAVOR
GROUP BY i.INGREDIENT_TYPE
ORDER BY TOTAL_ORDER;