-- 조건에 부합하는 중고거래 상태 조회하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164672
-- 작성한 날: 2026.05.28 19:55:23

select
   BOARD_ID,
   WRITER_ID,
   TITLE,
   PRICE,
 case
    when STATUS = 'SALE' then '판매중'
    when STATUS = 'RESERVED' then '예약중'
    when STATUS = 'DONE' then '거래완료'
 end as STATUS
from USED_GOODS_BOARD
where date(CREATED_DATE) = '2022-10-05'
order by BOARD_ID desc;