-- Contest Leaderboard
-- 링크: https://www.hackerrank.com/challenges/contest-leaderboard/problem
-- 작성일: 2026.09.03

-- 1. 해커 및 문항별 최고 점수 추출
WITH max_scores AS (
    SELECT
        hacker_id,
        challenge_id,
        MAX(score) AS max_score
    FROM submissions
    GROUP BY
        hacker_id,
        challenge_id
)

-- 2. 해커의 이름, ID 그리고 총 점수 출력 
SELECT
    h.hacker_id,
    h.name,
    SUM(m.max_score) AS total_score
FROM hackers h
JOIN max_scores m ON h.hacker_id = m.hacker_id
GROUP BY 
    h.hacker_id,
    h.name
HAVING total_score > 0
ORDER BY 
    total_score DESC,
    h.hacker_id;