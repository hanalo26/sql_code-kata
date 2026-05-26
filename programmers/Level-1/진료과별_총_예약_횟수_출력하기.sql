-- 진료과별 총 예약 횟수 출력하기
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132202
-- 작성일: 2026.05.26 09:40:11

select
    MCDP_CD as 진료과코드,
    count(*) as 5월예약건수
from APPOINTMENT
where APNT_YMD like '2022-05%'
group by MCDP_CD
order by 5월예약건수, 진료과코드;