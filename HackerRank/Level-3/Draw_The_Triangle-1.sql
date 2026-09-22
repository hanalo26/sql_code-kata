-- 문제명: Draw The Triangle 1
-- 링크: https://www.hackerrank.com/challenges/draw-the-triangle-1/problem
-- 작성일: 2026.09.21

WITH RECURSIVE triangle AS (
		-- Anchor Member: 20부터 시작
    SELECT 20 AS n
    UNION ALL
    -- Recursive Member: n이 1보다 클 때까지 1씩 감소
    SELECT n-1
    FROM triangle
    WHERE n > 1
)
SELECT REPEAT('* ', n) -- 문자열 '* '(별 뒤에 공백 1칸)을 n번만큼 반복 생성함 
FROM triangle;