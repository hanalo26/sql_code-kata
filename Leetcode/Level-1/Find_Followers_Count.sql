-- 1729. Find Followers Count
-- 링크:https://leetcode.com/problems/find-followers-count/description/
-- 작성일: 2026.07.06

SELECT 
    user_id,
    COUNT(follower_id) AS followers_count
FROM Followers 
GROUP BY user_id
ORDER BY user_id;