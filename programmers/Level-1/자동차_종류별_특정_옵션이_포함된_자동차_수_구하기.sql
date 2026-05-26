-- 자동차 종류 별 특정 옵션이 포함된 자동차 수 구하기
-- 문제링크: https://school.programmers.co.kr/learn/courses/30/lessons/151137
-- 작성일자: 2026.05.26. 09:48:22

select
    CAR_TYPE,
    count(*) as CARS
from CAR_RENTAL_COMPANY_CAR
where OPTIONS like '%통풍시트%'
    or OPTIONS like '%열선시트%'
    or OPTIONS like '%가죽시트%'
group by CAR_TYPE
order by CAR_TYPE;