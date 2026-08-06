-- Binary Tree Nodes
-- 링크:https://www.hackerrank.com/challenges/binary-search-tree-1/problem
-- 작성일: 2026.08.06

SELECT
    N,
    CASE
        WHEN P IS NULL THEN "Root"
        WHEN N IN (
            SELECT DISTINCT P
            FROM BST
            WHERE P IS NOT NULL
        ) THEN "Inner" ELSE "Leaf"
    END AS Node_Types
FROM BST
ORDER BY N;