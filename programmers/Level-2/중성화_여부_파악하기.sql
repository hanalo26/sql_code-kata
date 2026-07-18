-- 중성화 여부 파악하기
-- 링크:https://school.programmers.co.kr/learn/courses/30/lessons/59409
-- 작성일: 2026.07.18

select 
    ANIMAL_ID, 
    NAME,
case 
    when SEX_UPON_INTAKE like '%Neutered%' or SEX_UPON_INTAKE like '%Spayed%' then 'O'
    else 'X'
end as '중성화'
from ANIMAL_INS
order by ANIMAL_ID;