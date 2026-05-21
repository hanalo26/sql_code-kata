-- 고양이와 개는 몇 마리 있을까
-- 문제링크: https://school.programmers.co.kr/learn/courses/30/lessons/59040
-- 작성: 2026.05.21 14:25:44

SELECT
    animal_type,
    count(*) as 'count'
FROM animal_ins
GROUP BY animal_type
ORDER BY animal_type;