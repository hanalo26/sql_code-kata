-- Ollivander's Inventory
-- 링크:https://www.hackerrank.com/challenges/harry-potter-and-wands/problem
-- 작성일: 2026.08.18

--------
-- (1) 문제 핵심 조건
--    is_evil = 0인 지팡이만 선택
--    (age, power) 조합이 같은 지팡이들 중에서 coins_needed가 가장 작은 지팡이를 선택

-- (2) 정렬 기준
--    power 내림차순 (1순위)
--    age 내림차순 (2순위)
--------

WITH ranked_wands AS (
    SELECT
        w.id,
        wp.age,
        w.coins_needed,
        w.power,
        ROW_NUMBER() OVER (
            PARTITION BY wp.age, w.power
            ORDER BY w.coins_needed, w.id
        ) AS rn
    FROM Wands w
    JOIN Wands_Property wp ON w.code = wp.code
    WHERE wp.is_evil = 0
)

SELECT id, age, coins_needed, power
FROM ranked_wands
WHERE rn = 1
ORDER BY power DESC, age DESC;