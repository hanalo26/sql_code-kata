-- Weather Observation Station 6
-- 링크:https://www.hackerrank.com/challenges/weather-observation-station-6/problem
-- 작성일: 2026.07.07

SELECT DISTINCT city
FROM station
WHERE city REGEXP "^[aeiou]"; -- REGEXP: 정규표현식을 사용할 때 사용하는 키워드 