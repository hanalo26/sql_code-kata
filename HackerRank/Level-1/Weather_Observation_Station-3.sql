-- Weather Observation Station 3
-- 링크:https://www.hackerrank.com/challenges/weather-observation-station-3/problem
-- 작성일: 2026.07.06

SELECT DISTINCT city
FROM station
WHERE ID % 2 = 0; 