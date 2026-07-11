-- Weather Observation Station 14
-- 링크:https://www.hackerrank.com/challenges/weather-observation-station-14/problem
-- 작성일: 2026.07.11

SELECT ROUND(MAX(LAT_N), 4)
FROM STATION
WHERE LAT_N < 137.2345;