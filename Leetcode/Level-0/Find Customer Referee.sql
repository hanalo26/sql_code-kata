-- 문제: 584. Find Customer Referee
-- 문제 링크: https://leetcode.com/problems/find-customer-referee/description/
-- 날짜: 2026.05.22.13:27:21

SELECT name
FROM customer
WHERE 
    referee_id != 2 OR referee_id IS NULL;