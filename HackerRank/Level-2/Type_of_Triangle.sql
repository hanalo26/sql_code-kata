-- Type of Triangle
-- 링크:https://www.hackerrank.com/challenges/what-type-of-triangle/problem
-- 작성일: 2026.07.26

SELECT 
    CASE 
        WHEN A+B <= C OR A+C <= B OR B+C <= A THEN "Not A Triangle"
        WHEN A=B AND B=C THEN "Equilateral"
        WHEN A=B OR A=C OR B=C THEN "Isosceles"
        ELSE "Scalene"
    END AS "type_of_triangle"
FROM TRIANGLES;