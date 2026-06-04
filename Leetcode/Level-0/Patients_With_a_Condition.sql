-- 1527.Patients With a Condition
-- 링크: https://leetcode.com/problems/patients-with-a-condition/description/
-- 작성일: 2026.06.04

SELECT *
FROM Patients
WHERE conditions LIKE '% DIAB1%'
    OR conditions LIKE 'DIAB1%';