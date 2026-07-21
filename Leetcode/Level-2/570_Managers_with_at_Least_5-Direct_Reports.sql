-- 570. Managers with at Least 5 Direct Reports
-- 링크:https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/
-- 작성일: 2026.07.21

SELECT name
FROM Employee
WHERE id IN (
    SELECT managerId
    FROM Employee
    GROUP BY managerId
    HAVING COUNT(*) >= 5
);