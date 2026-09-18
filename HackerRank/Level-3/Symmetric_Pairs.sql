-- 문제명: Symmetric Pairs
-- 링크: https://www.hackerrank.com/challenges/symmetric-pairs/problem
-- 작성일: 2026.09.18

SELECT f1.X, f1.Y
FROM functions AS f1
JOIN functions AS f2 
ON f1.X = f2.Y 
AND f1.Y = f2.X
GROUP BY f1.X, f1.Y
HAVING f1.X < f1.Y OR (f1.X = f1.Y AND COUNT(*) >= 2)
ORDER BY f1.X;