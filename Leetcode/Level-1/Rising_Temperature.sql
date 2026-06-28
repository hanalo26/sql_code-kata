-- 197. Rising Temperature
-- 링크: https://leetcode.com/problems/rising-temperature/description/
-- 작성일: 2026.06.28

WITH ranked_weather AS (
    SELECT 
        id,
        recordDate,
        temperature,
        LAG(recordDate) OVER (ORDER BY recordDate) AS prev_Date,
        LAG(temperature) OVER (ORDER BY recordDate) AS prev_Temp
    FROM weather
)

SELECT id
FROM ranked_weather
WHERE DATEDIFF(recordDate, prev_Date) = 1
AND temperature > prev_Temp