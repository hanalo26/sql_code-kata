-- Population Census
-- 링크:https://www.hackerrank.com/challenges/asian-population/problem
-- 작성일: 2026.07.16

SELECT SUM(c.POPULATION)
FROM CITY c
JOIN COUNTRY r ON c.COUNTRYCODE = r.CODE
WHERE r.CONTINENT = "Asia";