-- 특정 기간동안 대여 가능한 자동차들의 대여비용 구하기
-- 링크:https://school.programmers.co.kr/learn/courses/30/lessons/157339
-- 작성일: 2026.09.26

select
    C.CAR_ID,
    C.CAR_TYPE,
    ROUND((C.DAILY_FEE * (1 - P.DISCOUNT_RATE/100) * 30),0) as FEE
from CAR_RENTAL_COMPANY_CAR as C
join CAR_RENTAL_COMPANY_DISCOUNT_PLAN as P
  on C.CAR_TYPE = P.CAR_TYPE
where C.CAR_TYPE in ('세단', 'SUV') 
  and P.DURATION_TYPE = '30일 이상'
  and C.CAR_ID not in (
    -- 2022.11.01 ~ 2022.11.30에 대여 중인 자동차 ID 추출
      select CAR_ID
      from CAR_RENTAL_COMPANY_RENTAL_HISTORY
      where END_DATE >= '2022-11-01' and START_DATE <= '2022-11-30'
  )
group by
    C.CAR_ID,
    C.CAR_TYPE
having FEE >= 500000 and FEE <= 2000000
order by 
    FEE desc,
    C.CAR_TYPE,
    C.CAR_ID desc;