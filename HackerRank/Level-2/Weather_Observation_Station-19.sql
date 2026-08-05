-- Weather Observation Station 19
-- 링크:https://www.hackerrank.com/challenges/weather-observation-station-19/problem
-- 작성일: 2026.08.05

/*
a: min(Lat_N)
b: max(LAT_N)
c: min(LONG_W)
d: max(LONG_W)


POWER(base, exponent): base의 exponent 제곱 (POWER(x, 2) = $x^2$)

SQRT(number): 제곱근(Square Root, $\sqrt{}$)을 구함
*/

SELECT
    ROUND(
        SQRT(POWER(MAX(LAT_N)-MIN(LAT_N),2) + POWER(MAX(LONG_W)-MIN(LONG_W),2)),4
    )
FROM STATION;