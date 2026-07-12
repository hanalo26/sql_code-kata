-- Weather Observation Station 15
-- 링크:https://www.hackerrank.com/challenges/weather-observation-station-15/problem
-- 작성일: 2026.07.12

SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC
LIMIT 1;