-- 1321. Restaurant Growth
-- 링크:https://leetcode.com/problems/restaurant-growth/description/
-- 작성일:2026.09.29

WITH daily_amount AS (
    -- 1. 각 날짜별 결제 금액 합산
    SELECT
        visited_on,
        SUM(amount) AS amount
    FROM Customer
    GROUP BY visited_on
    ORDER BY visited_on
),
weekly_amount AS (
    -- 2. 현재 날짜기준으로 7일간의 결제 금액 합계와 평균
    SELECT
        visited_on,
        SUM(amount) OVER (
            ORDER BY visited_on
            -- 6일전 데이터부터 현재 행 날짜까지 선택
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS amount,
        ROUND(AVG(amount)OVER (
            ORDER BY visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ),2) AS average_amount,
        ROW_NUMBER() OVER (ORDER BY visited_on) AS rn
    FROM daily_amount
)

-- 3. 현재 날짜를 기준으로 7일간의 데이터가 누적된 시점부터 출력
SELECT visited_on, amount, average_amount
FROM weekly_amount
WHERE rn>6
ORDER BY visited_on;