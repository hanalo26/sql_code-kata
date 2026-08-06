-- New Companies
-- 링크:https://www.hackerrank.com/challenges/the-company/problem
-- 작성일: 2026.08.06

SELECT
    C.company_code,
    C.founder,
    COUNT(DISTINCT LM.lead_manager_code),
    COUNT(DISTINCT SM.senior_manager_code),
    COUNT(DISTINCT M.manager_code),
    COUNT(DISTINCT E.employee_code)
FROM Company C
LEFT JOIN Lead_Manager LM ON C.company_code = LM.company_code
LEFT JOIN Senior_Manager SM ON LM.lead_manager_code = SM.lead_manager_code
LEFT JOIN Manager M ON SM.senior_manager_code = M.senior_manager_code
LEFT JOIN Employee E ON M.manager_code = E.manager_code
GROUP BY
    C.company_code,
    C.founder
ORDER BY C.company_code;