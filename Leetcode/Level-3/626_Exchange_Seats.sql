-- 626. Exchange Seats
-- 링크: https://leetcode.com/problems/exchange-seats/description/
-- 작성일: 2026.07.28

SELECT
    id,
    CASE
        -- id가 홀수이고, 마지막 번호인 경우엔 교환하지 않음
        WHEN id % 2 = 1 AND id = (SELECT MAX(id) FROM Seat) THEN student
        -- id가 홀수인 경우, 다음 번호 학생과 교환
        WHEN id % 2 = 1 THEN LEAD(student,1) OVER (ORDER BY id)
        -- id가 짝수인 경우, 이전 번호 학생과 교환
        ELSE LAG(student,1) OVER (ORDER BY id)
    END AS student
FROM Seat;