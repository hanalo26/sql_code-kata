-- 620. Not Boring Movies
-- 링크: https://leetcode.com/problems/triangle-judgement/submissions/1924890705/
-- 작성일:2026.05.30 15:

SELECT
    x, y, z,
    CASE 
        WHEN GREATEST(x,y,z) < (x+y+z) - GREATEST(x,y,z) -- GREATEST(): 행 방향으로 나열된 값들 중 최대값을 찾음
        THEN 'Yes'
        ELSE 'No'
    END AS 'triangle'
FROM triangle;