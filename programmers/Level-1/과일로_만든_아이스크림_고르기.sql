-- 과일로 만든 아이스크림 고르기
-- 링크:https://school.programmers.co.kr/learn/courses/30/lessons/133025
-- 작성일: 2026.06.24

SELECT i.FLAVOR
FROM ICECREAM_INFO AS i
LEFT JOIN FIRST_HALF AS f
    ON i.FLAVOR = f.FLAVOR
WHERE f.TOTAL_ORDER > 3000 AND i.INGREDIENT_TYPE LIKE "%fruit%"
ORDER BY f.TOTAL_ORDER DESC;