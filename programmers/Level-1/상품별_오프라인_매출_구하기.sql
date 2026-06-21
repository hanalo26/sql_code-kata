-- 상품별 오프라인 매출 구하기
-- 링크:https://school.programmers.co.kr/learn/courses/30/lessons/131533
-- 작성일: 2026.06.21

SELECT
    r.PRODUCT_CODE,
    SUM(r.PRICE * o.SALES_AMOUNT) AS SALES
FROM OFFLINE_SALE AS o
JOIN PRODUCT AS r ON o.PRODUCT_ID = r.PRODUCT_ID
GROUP BY r.PRODUCT_CODE
ORDER BY
    SALES DESC,
    r.PRODUCT_CODE;