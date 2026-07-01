-- 1633. Percentage of Users Attended a Contest
-- 링크:https://leetcode.com/problems/percentage-of-users-attended-a-contest/
-- 작성일: 2026.07.01

SELECT
    contest_id,
    ROUND(
        (COUNT(user_id)/(SELECT COUNT(user_id) FROM Users))*100,
        2
    ) AS percentage
FROM Register
GROUP BY contest_id
ORDER BY
    percentage DESC,
    contest_id; 