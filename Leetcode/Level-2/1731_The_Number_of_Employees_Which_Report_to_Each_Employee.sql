-- 1731. The Number of Employees Which Report to Each Employee
-- 링크:https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description/
-- 작성일: 2026.07.22

SELECT 
    m1.employee_id,
    m1.name,
    COUNT(e1.employee_id) AS reports_count,
    ROUND(AVG(e1.age),0) AS average_age
FROM Employees AS e1
JOIN Employees AS m1 ON e1.reports_to = m1.employee_id
GROUP BY 
    m1.employee_id,
    m1.name
ORDER BY m1.employee_id;