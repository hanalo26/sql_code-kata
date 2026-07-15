-- Weather Observation Station 16
-- 링크:https://www.hackerrank.com/challenges/weather-observation-station-16/problem
-- 작성일: 2026.07.15

SELECT ROUND(MIN(LAT_N),4)
FROM STATION
WHERE LAT_N > 38.7880;