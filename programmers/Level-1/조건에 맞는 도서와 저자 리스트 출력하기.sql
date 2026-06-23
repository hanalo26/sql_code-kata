-- 조건에 맞는 도서와 저자 리스트 출력하기
-- 링크:https://school.programmers.co.kr/learn/courses/30/lessons/144854
-- 작성일: 2026.06.22

SELECT
    bo.BOOK_ID,
    au.AUTHOR_NAME,
    date_format(bo.PUBLISHED_DATE,'%Y-%m-%d') as PUBLISHED_DATE
FROM BOOK AS bo
JOIN AUTHOR AS au ON bo.AUTHOR_ID = au.AUTHOR_ID
WHERE bo.CATEGORY like "%경제%"
ORDER BY PUBLISHED_DATE;