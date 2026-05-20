-- 동명 동물 수 찾기
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59041
-- 작성일: 2026.05.20. 09:45:38

SELECT 
    name,
    COUNT(name) AS "COUNT"
FROM animal_ins
WHERE name IS NOT NULL
GROUP BY name
HAVING COUNT(name) > 1
ORDER BY name;