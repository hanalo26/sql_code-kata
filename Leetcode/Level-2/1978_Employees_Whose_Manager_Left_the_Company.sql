-- 1978. Employees Whose Manager Left the Company
-- 링크:https://leetcode.com/problems/employees-whose-manager-left-the-company/
-- 작성일: 2026.07.24

SELECT e.employee_id
FROM Employees e
LEFT JOIN Employees m ON e.manager_id = m.employee_id
WHERE e.salary < 30000 
    AND e.manager_id IS NOT NULL
    AND m.employee_id IS NULL
ORDER BY employee_id;