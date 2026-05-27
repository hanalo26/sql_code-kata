-- 카테고리 별 도서 판매량 집계하기
-- 문제링크: https://school.programmers.co.kr/learn/courses/30/lessons/144855
-- 작성일: 2026.05.27 19:35:39

SELECT
    b.CATEGORY,
    sum(s.SALES) as TOTAL_SALES
FROM BOOK as b
JOIN BOOK_SALES as s
 ON b.BOOK_ID = s.BOOK_ID
WHERE s.SALES_DATE BETWEEN '2022-01-01' AND '2022-01-31'
GROUP BY b.CATEGORY
ORDER BY b.CATEGORY;