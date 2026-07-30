-- 자동차 대여 기록에서 대여중 / 대여 가능 여부 구분하기
-- 링크:https://school.programmers.co.kr/learn/courses/30/lessons/157340
-- 작성일: 2026.07.30

SELECT 
    CAR_ID,
    -- 주어진 2022.10.16이 대여기간에 포함되어 있다면 "대여중"
    (CASE WHEN MAX("2022-10-16" BETWEEN START_DATE AND END_DATE)=1 THEN "대여중" ELSE "대여 가능" END) AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
ORDER BY CAR_ID DESC;