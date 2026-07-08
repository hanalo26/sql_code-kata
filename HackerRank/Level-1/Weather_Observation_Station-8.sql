-- Weather Observation Station 8 
-- 링크:https://www.hackerrank.com/challenges/weather-observation-station-8/problem
-- 작성일: 2026.07.08

SELECT DISTINCT city
FROM station
WHERE city REGEXP "^[aeiou]" AND city REGEXP "[aeiou]$"; 