-- 1148. Article Views I
-- 링크: https://leetcode.com/problems/article-views-i/description/
-- 작성날짜: 2026.05.29 21:24:52

SELECT 
    DISTINCT author_id AS id
FROM views
WHERE author_id = viewer_id
ORDER BY id;