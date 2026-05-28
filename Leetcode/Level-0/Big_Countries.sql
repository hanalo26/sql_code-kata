-- 595. Big Countries
-- 링크: https://leetcode.com/problems/big-countries/description/
-- 작성날짜: 2026.5.28 19:58:44

SELECT
    name,
    population,
    area
FROM World
WHERE area >= 3000000 OR population  >= 25000000;