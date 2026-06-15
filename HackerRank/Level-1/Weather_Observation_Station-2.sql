-- Weather Observation Station 2
-- 링크: https://www.hackerrank.com/challenges/weather-observation-station-2/problem
-- 작성일: 2026.06.15

SELECT
    ROUND(SUM(lat_n),2),
    ROUNd(SUM(long_w),2)
FROM station