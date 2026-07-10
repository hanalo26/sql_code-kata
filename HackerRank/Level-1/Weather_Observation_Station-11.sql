-- Weather Observation Station 11
-- 링크:https://www.hackerrank.com/challenges/weather-observation-station-11/problem
-- 작성일: 2026.07.10

SELECT DISTINCT city
FROM station
WHERE city REGEXP "^[^aeiou]" OR city REGEXP "[^aeiou]$" 