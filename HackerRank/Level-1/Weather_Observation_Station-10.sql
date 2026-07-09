-- Weather Observation Station 10
-- 링크: https://www.hackerrank.com/challenges/weather-observation-station-10/problem
-- 작성일: 2026.07.09

SELECT DISTINCT city
FROM station
WHERE city REGEXP '[^aeiou]$'; 