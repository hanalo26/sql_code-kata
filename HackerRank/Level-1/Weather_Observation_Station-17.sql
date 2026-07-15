-- Weather Observation Station 17
-- 링크:https://www.hackerrank.com/challenges/weather-observation-station-17/problem
-- 작성일: 2026.07.15

SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N > 38.7880
ORDER BY LAT_N
LIMIT 1;