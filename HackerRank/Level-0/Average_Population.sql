-- Average Population
-- 링크: https://www.hackerrank.com/challenges/average-population/problem
-- 작성일: 2026.06.18

SELECT TRUNCATE(AVG(population), 0)
FROM city

-- TRUNCATE(숫자, 자릿수) : MySQL의 버림 함수