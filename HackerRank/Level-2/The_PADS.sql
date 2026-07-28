-- The PADS
-- 링크: https://www.hackerrank.com/challenges/the-pads/problem
-- 작성일: 2026.07.28

/*
2개의 쿼리를 작성할 것
- 첫 번째는 이름(직업의 첫글자) 형태로 반환
- 두 번째는 정해진 문장에 맞춘 형태로 반환
*/

SELECT CONCAT(Name, '(', LEFT(Occupation, 1), ')') 
FROM OCCUPATIONS 
ORDER BY Name;

SELECT CONCAT('There are a total of ', COUNT(*), ' ', LOWER(Occupation), 's.') 
FROM OCCUPATIONS 
GROUP BY Occupation 
ORDER BY COUNT(*), Occupation;