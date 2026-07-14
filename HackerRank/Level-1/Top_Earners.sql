-- Top Earners
-- 링크:https://www.hackerrank.com/challenges/earnings-of-employees/problem
-- 작성일: 2026.07.14

SELECT (salary*months) AS earnings, COUNT(*)
FROM Employee
GROUP BY earnings
ORDER BY earnings DESC
LIMIT 1;