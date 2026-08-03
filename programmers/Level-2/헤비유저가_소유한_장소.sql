-- 헤비 유저가 소유한 장소
-- 링크:https://school.programmers.co.kr/learn/courses/30/lessons/77487
-- 작성일: 2026.08.03

SELECT *
FROM PLACES
WHERE HOST_ID IN (
    SELECT HOST_ID
    FROM PLACES
    GROUP BY HOST_ID
    HAVING COUNT(HOST_ID) > 1
)
ORDER BY ID;