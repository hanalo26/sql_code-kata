-- 577. Employee Bonus
-- 링크:https://leetcode.com/problems/employee-bonus/description/
-- 작성일: 2026.06.29

SELECT
    e.name,
    b.bonus
FROM Employee AS e
LEFT JOIN Bonus AS b ON e.empId = b.empId
WHERE b.bonus IS NULL
OR b.bonus < 1000; 