-- 550. Game Play Analysis IV
-- 링크:https://leetcode.com/problems/game-play-analysis-iv/description/
-- 작성일: 2026.07.27

/*
첫 로그인 후, 다음날 다시 로그인한 유저의 비율 구하기
소수점 아래 2자리까지 표현 
*/
WITH FirstLogin AS (
    SELECT
        player_id,
        event_date AS play_day,
        ROW_NUMBER() OVER (PARTITION BY player_id ORDER BY event_date) AS rn
    FROM Activity
)

SELECT ROUND(
    COUNT(DISTINCT a.player_id) / COUNT(DISTINCT f.player_id)
    ,2
) AS fraction
FROM FirstLogin f
LEFT JOIN Activity a 
    ON f.player_id = a.player_id
    AND a.event_date = DATE_ADD(f.play_day, INTERVAL 1 DAY)
WHERE f.rn = 1;