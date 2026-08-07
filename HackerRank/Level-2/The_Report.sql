-- The Report
-- 링크:https://www.hackerrank.com/challenges/the-report/problem
-- 작성일: 2026.08.07

SELECT
    CASE WHEN G.Grade >= 8 THEN S.Name ELSE null END AS Name,
    G.Grade,
    S.Marks
FROM Students S
JOIN Grades G 
    ON S.Marks BETWEEN G.Min_Mark AND G.Max_Mark
ORDER BY 
    G.Grade DESC,
    S.Name,
    S.Marks;