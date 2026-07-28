-- 180. Consecutive Numbers
-- 링크: https://leetcode.com/problems/consecutive-numbers/
-- 작성일: 2026.07.28

/*
3번이상 연속된 숫자 출력하기
*/
SELECT DISTINCT L1.num AS ConsecutiveNums
FROM Logs L1
JOIN Logs L2 ON L1.id = L2.id - 1 AND L1.num = L2.num
JOIN Logs L3 ON L1.id = L3.id - 2 AND L1.num = L3.num;