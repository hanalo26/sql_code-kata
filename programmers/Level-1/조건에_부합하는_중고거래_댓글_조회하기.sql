-- 조건에 부합하는 중고거래 댓글 조회하기
-- 링크:https://school.programmers.co.kr/learn/courses/30/lessons/164673
-- 작성일: 2026.06.26

SELECT
    b.TITLE,
    b.BOARD_ID,
    r.REPLY_ID,
    r.WRITER_ID,
    r.CONTENTS,
    r.CREATED_DATE
FROM USED_GOODS_BOARD AS b
JOIN USED_GOODS_REPLY AS r ON b.BOARD_ID=r.BOARD_ID
WHERE YEAR(b.CREATED_DATE) = 2022 AND MONTH(b.CREATED_DATE) = 10
ORDER BY r.CREATED_DATE, b.TITLE;