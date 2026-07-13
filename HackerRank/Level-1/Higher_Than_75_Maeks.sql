-- Higher Than 75 Marks
-- 링크:https://www.hackerrank.com/challenges/more-than-75-marks/problem
-- 작성일: 2026.07.13

SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID; 