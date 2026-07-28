-- Weather Observation Station 18
-- 링크: https://www.hackerrank.com/challenges/weather-observation-station-18/problem
-- 작성일: 2026.07.28

SELECT ROUND(ABS(MAX(LAT_N)-MIN(LAT_N))+ABS(MAX(LONG_W) - MIN(LONG_W)),4)
FROM STATION;