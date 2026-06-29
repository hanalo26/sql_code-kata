-- 1661. Average Time of Process per Machine
-- 링크:https://leetcode.com/problems/average-time-of-process-per-machine/description/
-- 작성일: 2026.06.29

SELECT
    machine_id,
    ROUND(
        AVG(CASE WHEN activity_type = "end" THEN timestamp ELSE -timestamp END)*2, 3
    ) AS processing_time
FROM Activity
GROUP BY machine_id;