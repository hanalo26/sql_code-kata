-- Weather Observation Station 4
-- 링크:https://www.hackerrank.com/challenges/weather-observation-station-4/problem
-- 작성일: 2026.07.07

SELECT COUNT(city) - COUNT(DISTINCT city)
FROM station; 