-- 619. Biggest Single Number
-- 링크:https://leetcode.com/problems/biggest-single-number/description/
-- 작성일: 2026.06.30

SELECT MAX(num_sub) AS num
FROM (
    SELECT num AS num_sub
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
) AS sub_query; 