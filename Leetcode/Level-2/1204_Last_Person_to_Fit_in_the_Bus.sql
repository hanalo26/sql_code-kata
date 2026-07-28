-- 1204. Last Person to Fit in the Bus
-- 링크:https://leetcode.com/problems/last-person-to-fit-in-the-bus/description/
-- 작성일: 2026.07.27

WITH Take_Bus AS (
    SELECT
        person_id,
         person_name,
         weight,
         turn,
         SUM(weight) OVER (ORDER BY turn) AS total_weight
    FROM Queue
)
SELECT person_name
FROM Take_Bus
WHERE total_weight <= 1000
ORDER BY total_weight DESC
LIMIT 1;