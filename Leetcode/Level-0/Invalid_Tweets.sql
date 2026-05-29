-- 1683. Invalid Tweets
-- 링크: https://leetcode.com/problems/invalid-tweets/description/
-- 작성날짜: 2026.05.29 21:26:05

SELECT tweet_id
FROM tweets
WHERE LENGTH(content) > 15;