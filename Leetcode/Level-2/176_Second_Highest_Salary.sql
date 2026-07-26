-- 176. Second Highest Salary
-- 링크:https://leetcode.com/problems/second-highest-salary/description/
-- 작성일: 2026.07.26

WITH RankedSalary AS (
    SELECT
        id,
        salary,
        DENSE_RANK() OVER (ORDER BY salary DESC) AS rn
    FROM Employee
)

SELECT MAX(salary) AS "SecondHighestSalary"
FROM RankedSalary
WHERE rn = 2;