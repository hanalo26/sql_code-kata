-- African Cities
-- 링크:https://www.hackerrank.com/challenges/african-cities/problem
-- 작성일: 2026.07.16

SELECT c.NAME
FROM CITY c
JOIN COUNTRY r ON c.COUNTRYCODE = r.CODE
WHERE r.CONTINENT = "Africa";