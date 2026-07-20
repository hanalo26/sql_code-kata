-- 오랜 기간 보호한 동물(1)
-- 링크:https://school.programmers.co.kr/learn/courses/30/lessons/59044
-- 작성일: 2026.07.20

SELECT 
	I.NAME,
	I.DATETIME
FROM ANIMAL_INS AS I
LEFT JOIN ANIMAL_OUTS AS O ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE O.DATETIME IS NULL
ORDER BY I.DATETIME -- 가장 먼저 입소한 아이 = 가장 오랜 기간 보호한 아이
LIMIT 3;