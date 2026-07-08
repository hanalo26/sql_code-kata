-- Weather Observation Station 7
-- 링크:https://www.hackerrank.com/challenges/weather-observation-station-7/problem
-- 작성일: 2026.07.08

SELECT DISTINCT city
FROM station
WHERE city REGEXP "[aeiou]$"; 