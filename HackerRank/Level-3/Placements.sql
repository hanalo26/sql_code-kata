-- Placements
-- 링크:https://www.hackerrank.com/challenges/placements/problem
-- 작성일: 2026.09.04

SELECT s.Name
FROM Students s
-- 1. 내 연봉 정보 붙이기
JOIN Packages p1 ON s.ID = p1.ID
-- 2. 친구의 ID
JOIN Friends f ON f.ID = s.ID
-- 3. 친구의 연봉
JOIN Packages p2 ON f.Friend_ID = p2.ID
-- 4. 친구의 연봉 > 내 연봉
WHERE p2.Salary > p1.Salary
-- 5. 친구의 연봉을 기준으로 오름차순 정렬
ORDER BY p2.Salary;