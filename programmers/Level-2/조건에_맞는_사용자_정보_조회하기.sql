-- 조건에 맞는 사용자 정보 조회하기
-- 링크:https://school.programmers.co.kr/learn/courses/30/lessons/164670
-- 작성일: 2026.07.29

SELECT
    u.USER_ID,
    u.NICKNAME,
    CONCAT(u.CITY, " ", u.STREET_ADDRESS1, " ", u.STREET_ADDRESS2) AS "전체주소",
    CONCAT(SUBSTR(u.TLNO,1,3), "-", SUBSTR(u.TLNO,4,4), "-", SUBSTR(u.TLNO,8,4)) AS "전화번호"
FROM USED_GOODS_BOARD b
JOIN USED_GOODS_USER u ON b.WRITER_ID = u.USER_ID
GROUP BY 
    u.USER_ID,
    u.NICKNAME
HAVING COUNT(b.BOARD_ID) > 2
ORDER BY u.USER_ID DESC;