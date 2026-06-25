-- 대여 기록이 존재하는 자동차 리스트 구하기
-- 링크:https://school.programmers.co.kr/learn/courses/30/lessons/157341
-- 작성일: 2026.06.25

SELECT DISTINCT c.CAR_ID
FROM CAR_RENTAL_COMPANY_CAR AS c
JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY AS h
  ON c.CAR_ID = h.CAR_ID
WHERE c.CAR_TYPE="세단" AND MONTH(h.START_DATE)=10
ORDER BY c.CAR_ID DESC;