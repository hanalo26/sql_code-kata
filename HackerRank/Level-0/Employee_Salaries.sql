-- Employee Salaries
-- 링크:https://www.hackerrank.com/challenges/salary-of-employees/problem
-- 작성일: 2026.06.16

SELECT name
FROM employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id;