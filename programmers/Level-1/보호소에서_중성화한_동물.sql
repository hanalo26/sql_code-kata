-- 보호소에서 중성화한 동물
-- 링크:https://school.programmers.co.kr/learn/courses/30/lessons/59045
-- 작성일: 2026.06.23

SELECT
    i.ANIMAL_ID,
    i.ANIMAL_TYPE,
    i.NAME
FROM ANIMAL_INS AS i
JOIN ANIMAL_OUTS AS o ON i.ANIMAL_ID = o.ANIMAL_ID
WHERE i.SEX_UPON_INTAKE like "Intact%" 
AND o.SEX_UPON_OUTCOME not like "Intact%"
ORDER BY i.ANIMAL_ID;