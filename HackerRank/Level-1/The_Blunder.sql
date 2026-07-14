-- The Blunder
-- 링크:https://www.hackerrank.com/challenges/the-blunder/problem
-- 작성일: 2026.07.14

SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary,"0","")))
FROM EMPLOYEES;