-- 오랜 기간 보호한 동물(2)
-- 링크:https://school.programmers.co.kr/learn/courses/30/lessons/59411
-- 작성일: 2026.06.22

SELECT
    i.ANIMAL_ID,
    i.NAME
FROM ANIMAL_INS AS i
JOIN ANIMAL_OUTS AS o ON i.ANIMAL_ID = o.ANIMAL_ID
ORDER BY DATEDIFF(o.DATETIME, i.DATETIME) DESC
LIMIT 2;