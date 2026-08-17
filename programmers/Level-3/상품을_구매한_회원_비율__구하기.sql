-- 상품을 구매한 회원 비율 구하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131534
-- 작성일: 2026.08.17

-- 2021년에 가입한 회원 수
WITH USER_21 AS (
    SELECT COUNT(DISTINCT USER_ID) AS total_cnt
    FROM USER_INFO
    WHERE YEAR(JOINED) = 2021
)

-- 2021년에 가입한 회원 중 상품을 구매한 회원의 비율
SELECT
    YEAR(os.SALES_DATE) AS YEAR,
    MONTH(os.SALES_DATE) AS MONTH,
    COUNT(DISTINCT os.USER_ID) AS PURCHASED_USERS,
    ROUND(
        COUNT(DISTINCT os.USER_ID) / (SELECT total_cnt FROM USER_21),
        1
    ) AS PURCHASED_RATIO
FROM ONLINE_SALE AS os
JOIN USER_INFO AS ui ON os.USER_ID = ui.USER_ID
WHERE YEAR(ui.JOINED) = 2021
GROUP BY YEAR, MONTH
ORDER BY YEAR, MONTH;