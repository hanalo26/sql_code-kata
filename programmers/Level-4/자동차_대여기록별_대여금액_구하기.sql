-- 자동차 대여 기록 별 대여 금액 구하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151141
-- 작성일: 2026.09.28

WITH rental_info AS (
    -- 대여기록별 대여기간 계산
    SELECT
        h.HISTORY_ID,
        c.DAILY_FEE,
        c.car_type,
        DATEDIFF(h.END_DATE, h.START_DATE) + 1 AS duration,
        CASE 
            WHEN DATEDIFF(h.END_DATE, h.START_DATE) + 1 >= 90 THEN "90일 이상"
            WHEN DATEDIFF(h.END_DATE, h.START_DATE) + 1 >= 30 THEN "30일 이상"
            WHEN DATEDIFF(h.END_DATE, h.START_DATE) + 1 >= 7 THEN "7일 이상"
            ELSE NULL
        END AS duration_type
    FROM CAR_RENTAL_COMPANY_CAR AS c
    JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY AS h
        ON c.CAR_ID = h.CAR_ID
    WHERE c.car_type = "트럭"
)

SELECT
    r.HISTORY_ID,
    ROUND(r.daily_fee * r.duration * (100-COALESCE(p.discount_rate,0))/100) AS FEE
FROM rental_info AS r
LEFT JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN AS p
    ON p.CAR_TYPE = r.car_type AND p.DURATION_TYPE = r.duration_type
ORDER BY
    FEE DESC,
    r.HISTORY_ID DESC;