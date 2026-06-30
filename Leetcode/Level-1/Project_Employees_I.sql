-- 1075. Project Employees I
-- 링크:https://leetcode.com/problems/project-employees-i/description/
-- 작성일: 2026.06.30

SELECT
    p.project_id,
    ROUND(AVG(e.experience_years),2) AS average_years
FROM Project AS p
JOIN Employee AS e ON p.employee_id = e.employee_id
GROUP BY p.project_id;