-- Weather Observation Station 5
-- 링크: https://www.hackerrank.com/challenges/weather-observation-station-5/problem
-- 작성일: 2026.07.25

(
    SELECT CITY, LENGTH(CITY)
    FROM STATION
    ORDER BY LENGTH(CITY), CITY
    LIMIT 1
)

UNION ALL

(
    SELECT CITY, LENGTH(CITY)
    FROM STATION
    ORDER BY LENGTH(CITY) DESC, CITY
    LIMIT 1
);