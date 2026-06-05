-- 1378. Replace Employee ID With The Unique Identifier
-- 링크: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/
-- 작성일: 2026.06.05

SELECT
    u.unique_id,
    e.name
FROM employees AS e
LEFT JOIN employeeUNI AS u ON e.id=u.id