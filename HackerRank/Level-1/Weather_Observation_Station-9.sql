-- Weather Observation Station 9
-- 링크: https://www.hackerrank.com/challenges/weather-observation-station-9/problem
-- 작성일: 2026.07.09

SELECT DISTINCT city
FROM station
WHERE city REGEXP '^[^aeiou]';