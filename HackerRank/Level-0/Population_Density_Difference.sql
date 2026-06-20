-- Population Density Difference
-- 링크:https://www.hackerrank.com/challenges/population-density-difference/problem
-- 작성일: 2026.06.20

SELECT ROUND(MAX(population) - MIN(population),0)
FROM city