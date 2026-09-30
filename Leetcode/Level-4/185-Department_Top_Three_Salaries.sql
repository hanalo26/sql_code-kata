-- 185.Department Top Three Salaries
-- 링크:https://leetcode.com/problems/department-top-three-salaries/description/
-- 작성일: 2026.09.30

-- 각 부서별 salary 상위 3명 출력
-- 출력해야 하는 컬럼명: Department, Employee, Salary

WITH Ranked_Salary AS (
    -- 부서별 연봉 순위 출력 (동점자 인정)
    SELECT 
        d.name AS Department,
        e.name AS Employee,
        e.salary AS Salary,
        DENSE_RANK() OVER (
            PARTITION BY e.departmentId
            ORDER BY e.salary DESC
        ) AS rn
    FROM Employee AS e
    JOIN Department AS d ON e.departmentId = d.id
)
-- 정렬 순서는 지정되어 있지 않지만, 부서별로 연봉이 높은 순서대로 출력할 예정
SELECT Department, Employee, Salary
FROM Ranked_Salary
WHERE rn <= 3
ORDER BY Department, Salary DESC;