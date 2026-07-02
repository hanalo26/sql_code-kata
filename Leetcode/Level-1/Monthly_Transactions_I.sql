-- 1193.Monthly Transactions I
-- 링크:https://leetcode.com/problems/monthly-transactions-i/description/
-- 작성일: 2026.07.02 

WITH tables AS (
    SELECT
        id,
        country,
        state,
        amount,
        DATE_FORMAT(trans_date, "%Y-%m") AS month
    FROM Transactions
)

SELECT
    month,
    country,
    COUNT(*) trans_count,
    SUM(CASE WHEN state='approved' THEN 1 ELSE 0 END) AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(CASE WHEN state='approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM tables
GROUP BY month, country; 