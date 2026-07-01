-- 1211. Queries Quality and Percentage
-- 링크:https://leetcode.com/problems/queries-quality-and-percentage/description/
-- 작성일: 2026.07.01

SELECT
    query_name,
    ROUND(AVG(rating/position),2) AS quality,
    ROUND(AVG(CASE WHEN rating < 3 THEN 1 ELSE 0 END)*100,2) AS poor_query_percentage
FROM Queries AS q
GROUP BY query_name;