-- 596. Classes With at Least 5 Students
-- 링크:https://leetcode.com/problems/classes-with-at-least-5-students/description/
-- 작성일: 2026.07.03

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5;