-- 1174. Immediate Food Delivery II
-- 링크:https://leetcode.com/problems/immediate-food-delivery-ii/description/
-- 작성일: 2026.07.26

/*
Table: Delivery
- delivery_id:
- customer_id:
- order_date: 주문일
- customer_pref_delivery_date: 소비자가 배송받고 싶은 날

<구해야 하는 것>
- 당일 배송 받고 싶은 고객(immediate)과 그렇지 않은 고객(scheduled)으로 구분할 것
- 각 소비자마다 첫 주문을 했을 떄, 당일 배송으로 신청한 비율, 소수점 2자릿수 사용

*/
WITH cal_for_answer AS (
    SELECT 
        customer_id,
        CASE 
            WHEN order_date = customer_pref_delivery_date THEN "immediate" ELSE "scheduled"
        END AS pref_delivery_days,
        ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date) AS rn
    FROM Delivery
)

SELECT 
    ROUND(AVG(CASE WHEN pref_delivery_days = "immediate" THEN 1 ELSE 0 END)*100,2) AS "immediate_percentage"
FROM cal_for_answer
WHERE rn = 1;