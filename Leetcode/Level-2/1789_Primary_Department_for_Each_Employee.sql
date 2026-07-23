-- 1789. Primary Department for Each Employee
-- 링크:https://leetcode.com/problems/primary-department-for-each-employee/description/
-- 작성일: 2026.07.23

SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = "Y" 
    OR employee_id IN (
        SELECT employee_id
        FROM Employee
        GROUP BY employee_id
        HAVING COUNT(department_id) = 1
    );