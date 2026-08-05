-- Weather Observation Station 20
-- 링크:https://www.hackerrank.com/challenges/weather-observation-station-20/problem
-- 작성일: 2026.08.05

WITH Ranked_STATION AS (
    SELECT
        LAT_N,
        ROW_NUMBER() OVER (ORDER BY LAT_N) AS rn,
        -- 전체 행의 개수를 COUNT해서 모든 행에 집어넣는 역할
        COUNT(*) OVER () AS total_cnt
    FROM STATION
)

-- 행의 수가 짝수여서 2개가 선택된 경우, 평균값 반환
SELECT ROUND(AVG(LAT_N),4)
FROM Ranked_STATION
WHERE rn IN (
    FLOOR((total_cnt+1)/2), CEIL((total_cnt+1)/2)
);