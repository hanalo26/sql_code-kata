-- 602. Friend Requests II: Who Has the Most Friends
-- 링크:https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/
-- 작성일: 2026.07.26

/*
Table: RequestAccepted
requester_id: 요청한 유저의 ID
accepter_id: 요청을 받은 유저의 ID
accept_date: 요청을 수락한 날짜

<구해야 하는 것>
가장 많은 친구요청을 받은 유저의 ID, 받은 요청의 개수
*/
SELECT 
    id,
    COUNT(id) AS num
FROM (
    -- 친구 요청을 보낸 유저
    SELECT requester_id AS id
    FROM RequestAccepted

    UNION ALL 

    -- 친구 요청을 받은 유저
    SELECT accepter_id AS id
    FROM RequestAccepted

) AS tables -- 두 유저가 모두 자신의 친구가 +1 되기 때문에 하나의 컬럼으로 합침
GROUP BY id
ORDER BY num DESC
LIMIT 1;