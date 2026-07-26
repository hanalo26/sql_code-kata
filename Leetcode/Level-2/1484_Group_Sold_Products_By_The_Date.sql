-- 1484. Group Sold Products By The Date
-- 링크:https://leetcode.com/problems/group-sold-products-by-the-date/description/
-- 작성일: 2026.07.26

/*
날짜별로 매진된 상품 수 및 이름 출력
판매일을 기준으로 정렬


GROUP_CONCAT(
    DISTINCT 컬럼명         -- 중복 제거
    ORDER BY 컬럼명 ASC/DESC -- 합칠 문자열들의 정렬 순서
    SEPARATOR '구분자'      -- 연결할 구분자 (기본값은 쉼표 ',')
)
*/

SELECT
    sell_date,
    COUNT(DISTINCT product) AS num_sold,
    GROUP_CONCAT(DISTINCT product ORDER BY product) AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;