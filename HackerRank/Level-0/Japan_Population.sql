-- Japan Population
-- 링크:https://www.hackerrank.com/challenges/japan-population/problem
-- 작성일: 2026.06.20

SELECT SUM(population)
FROM city
WHERE countrycode = 'JPN'