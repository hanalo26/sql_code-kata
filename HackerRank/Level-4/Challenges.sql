-- Challenges
-- 링크: https://www.hackerrank.com/challenges/challenges/problem
-- 작성일: 2026.10.02

/*
1. 출력해야 하는 것: hacker_id, name, number_of_challenges(NoC))
2. 정렬 기준: NoC DESC, hacker_id ASC
3. 결과 제외 조건: NoC가 전체 총 과제수보다 작은 경우, 그 값이 유일하지 않다면 제외
*/

WITH challenge_cnts AS (
		-- 1. 해커별 생성한 과제 수 집계
    SELECT
        h.hacker_id,
        h.name,
        COUNT(c.challenge_id) AS total_cnt
    FROM Hackers h
    JOIN Challenges c ON h.hacker_id = c.hacker_id
    GROUP BY 
        h.hacker_id,
        h.name
),
max_cnts AS (
    -- 2. 전체 해커 중 최대 과제 수 산출
    SELECT MAX(total_cnt) AS max_cnt
    FROM challenge_cnts
),
duplicated_cnts AS (
		-- 3. 최대 과제 수보다 작으면서, 중복(2명 이상)된 과제 수 목록 추출
    SELECT total_cnt
    FROM challenge_cnts
    WHERE total_cnt < (SELECT max_cnt FROM max_cnts)
    GROUP BY total_cnt
    HAVING COUNT(total_cnt) > 1
)
-- 4. 최종 결과 출력
SELECT
    hacker_id,
    name,
    total_cnt AS challenges_created
FROM challenge_cnts
WHERE total_cnt = (SELECT max_cnt FROM max_cnts)
    OR total_cnt NOT IN (SELECT total_cnt FROM duplicated_cnts)
ORDER BY challenges_created DESC, hacker_id;