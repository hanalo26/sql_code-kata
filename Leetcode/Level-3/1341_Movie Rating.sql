-- 1341. Movie Rating
-- 링크: https://leetcode.com/problems/movie-rating/description/
-- 작성일: 2026.07.28

/*
(1) 영화에 가장 많은 평점을 준 유저의 이름 출력하기
- 평점 개수 DESC, 이름 ASC

(2) 2020-02에 가장 높은 평균 평점을 받은 영화의 제목 출력하기
- 평점 DESC, 제목 ASC
*/

(
    -- 테이블 1
    SELECT u.name AS results
    FROM Users u
    JOIN MovieRating m ON u.user_id = m.user_id
    GROUP BY u.user_id, u.name
    ORDER BY COUNT(m.rating) DESC, u.name
    LIMIT 1
)
UNION ALL
(
    -- 테이블 2
    SELECT m.title AS results
    FROM Movies m
    JOIN MovieRating r ON m.movie_id = r.movie_id
    WHERE r.created_at >= "2020-02-01" AND r.created_at < "2020-03-01"
    GROUP BY m.movie_id, m.title
    ORDER BY AVG(r.rating) DESC, m.title
    LIMIT 1
);