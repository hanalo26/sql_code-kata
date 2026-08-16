-- 입양 시각 구하기(2)
-- 링크:https://school.programmers.co.kr/learn/courses/30/lessons/59413
-- 작성일: 2026.08.16

WITH RECURSIVE HOURS AS (
    SELECT 0 AS HOUR
    UNION ALL
    SELECT HOUR + 1
    FROM HOURS
    WHERE HOUR < 23
)


SELECT 
    H.HOUR AS HOUR, 
    COUNT(O.ANIMAL_ID) AS COUNT
FROM HOURS H -- 기준테이블로 작성함으로써 입양기록이 없는 시간대도 출력되도록 함
LEFT JOIN ANIMAL_OUTS O ON HOUR(O.DATETIME) = H.HOUR
GROUP BY HOUR
ORDER BY HOUR;