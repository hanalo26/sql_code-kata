-- 입양 시각 구하기(1)
-- 문제링크: https://school.programmers.co.kr/learn/courses/30/lessons/59412
-- 작성: 2026.05.21 14:27:44

SELECT
    hour(datetime) as 'HOUR',
    count(*) as 'COUNT'
FROM animal_outs
WHERE hour(datetime) BETWEEN 9 AND 19
GROUP BY hour(datetime)
ORDER BY hour(datetime);