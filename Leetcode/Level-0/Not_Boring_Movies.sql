-- 620. Not Boring Movies
-- 링크: https://leetcode.com/problems/not-boring-movies/submissions/2016968538/
-- 작성일: 2026.05.30. 15:06:02

SELECT *
FROM cinema
WHERE (id % 2 != 0)
 AND description NOT IN ('boring')
ORDER BY rating DESC;