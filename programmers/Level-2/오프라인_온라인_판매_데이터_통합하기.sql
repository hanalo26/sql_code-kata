-- 오프라인/온라인 판매 데이터 통합하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131537
-- 작성일: 2026.07.25

-- 조건: 2022년 3월 데이터의 판매 날짜, 상품ID, 유저ID, 판매량 출력
--       OFFLINE_SALE 테이블의 판매 데이터의 USER_ID 값은 NULL 로 표시
--       판매일을 기준으로 오름차순 -> 상품 ID를 기준으로 오름차순 -> 유저 ID를 기준으로 오름차순 정렬

SELECT 
    SALES_DATE, 
    PRODUCT_ID, 
    USER_ID, 
    SALES_AMOUNT
FROM ONLINE_SALE
WHERE SALES_DATE >= "2022-03-01" AND SALES_DATE < "2022-04-01"

UNION ALL 

SELECT 
    SALES_DATE, 
    PRODUCT_ID, 
    NULL AS USER_ID, 
    SALES_AMOUNT
FROM OFFLINE_SALE
WHERE SALES_DATE >= "2022-03-01" AND SALES_DATE < "2022-04-01"

ORDER BY SALES_DATE, PRODUCT_ID, USER_ID;