-- 196. Delete Duplicate Emails
-- 링크:https://leetcode.com/problems/delete-duplicate-emails/description/
-- 작성일: 2026.07.24

DELETE p1
FROM Person p1
JOIN Person p2 ON p1.email=p2.email AND p1.id > p2.id;