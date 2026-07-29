-- 없어진 기록 찾기
-- 링크:https://school.programmers.co.kr/learn/courses/30/lessons/59042
-- 작성일: 2026.07.29

SELECT o.ANIMAL_ID, o.NAME
FROM ANIMAL_OUTS o
LEFT JOIN ANIMAL_INS i ON o.ANIMAL_ID = i.ANIMAL_ID
WHERE i.ANIMAL_ID IS NULL
ORDER BY o.ANIMAL_ID;