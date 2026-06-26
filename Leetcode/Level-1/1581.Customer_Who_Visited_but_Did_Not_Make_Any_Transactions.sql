-- 1581. Customer Who Visited but Did Not Make Any Transactions
-- 링크:https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/
-- 작성일: 2026.06.26

SELECT 
    v.customer_id,
    COUNT(*) AS count_no_trans
FROM Visits AS v
LEFT JOIN Transactions AS t ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;