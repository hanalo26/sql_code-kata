-- 1667. Fix Names in a Table
-- 링크: https://leetcode.com/problems/fix-names-in-a-table/description/
-- 작성일: 2026.06.04

SELECT 
    user_id,
    CONCAT(UPPER(LEFT(name, 1)), LOWER(SUBSTRING(name,2))) AS name
FROM users
ORDER BY user_id;