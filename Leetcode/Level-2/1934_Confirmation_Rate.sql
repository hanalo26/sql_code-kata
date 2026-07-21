-- 1934. Confirmation Rate
-- 링크:https://leetcode.com/problems/confirmation-rate/
-- 작성일: 2026.07.21

SELECT
    s.user_id,
    ROUND(IFNULL(AVG(IF(c.action = "confirmed",1,0)),0),2) AS confirmation_rate
FROM Signups AS s
LEFT JOIN Confirmations AS c ON s.user_id = c.user_id
GROUP BY s.user_id;