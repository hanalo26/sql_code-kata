-- 문제명:Occupations
-- 링크:https://www.hackerrank.com/challenges/occupations/problem
-- 작성일: 2026.09.23

WITH ranked_occupations AS (
    SELECT 
        name, 
        occupation,
        -- 각 직업별 이름을 알파벳 순으로 정렬한 뒤, 번호 부여
        ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name) AS rn
    FROM OCCUPATIONS
)
-- 각 직업별 rn=1에 해당하는 인물의 이름을 한 행으로 출력하기 위해 MAX()로 묶음
-- NULL은 자동으로 제외됨
SELECT
    MAX(CASE WHEN occupation='Doctor' THEN name END) AS Doctor,
    MAX(CASE WHEN occupation='Professor' THEN name END) AS Professor,
    MAX(CASE WHEN occupation='Singer' THEN name END) AS Singer,
    MAX(CASE WHEN occupation='Actor' THEN name END) AS Actor
FROM ranked_occupations
GROUP BY rn
ORDER BY rn;