-- Average Population of Each Continent
-- 링크:https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
-- 작성일: 2026.07.18

SELECT 
    r.CONTINENT,
    FLOOR(AVG(c.POPULATION))
FROM CITY c
JOIN COUNTRY r ON c.COUNTRYCODE = r.CODE
GROUP BY r.CONTINENT;