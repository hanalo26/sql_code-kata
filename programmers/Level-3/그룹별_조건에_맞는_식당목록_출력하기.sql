-- 그룹별 조건에 맞는 식당 목록 출력하기
-- 링크:https://school.programmers.co.kr/learn/courses/30/lessons/131124
-- 작성일: 2026.08.08

WITH top_reviewer AS (
    -- 리뷰를 가장 많이 작성한 회원의 ID
    SELECT MEMBER_ID
    FROM REST_REVIEW
    GROUP BY MEMBER_ID
    ORDER BY COUNT(*) DESC
    LIMIT 1
)

SELECT 
    me.MEMBER_NAME,
    r.REVIEW_TEXT,
    DATE_FORMAT(r.REVIEW_DATE, "%Y-%m-%d") AS REVIEW_DATE
FROM REST_REVIEW r
JOIN MEMBER_PROFILE me ON r.MEMBER_ID = me.MEMBER_ID
WHERE me.MEMBER_ID = (
    SELECT *
    FROM top_reviewer
)
ORDER BY REVIEW_DATE, r.REVIEW_TEXT;