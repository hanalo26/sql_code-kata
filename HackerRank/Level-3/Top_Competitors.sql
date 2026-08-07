-- Top Competitors
-- 링크:https://www.hackerrank.com/challenges/full-score/problem
-- 작성일: 2026.08.07

SELECT h.hacker_id, h.name
FROM Submissions s
JOIN Hackers h ON s.hacker_id = h.hacker_id
JOIN Challenges c ON s.challenge_id = c.challenge_id
JOIN Difficulty d ON c.difficulty_level = d.difficulty_level
WHERE s.score = d.score
GROUP BY h.hacker_id, h.name
HAVING COUNT(s.challenge_id) >= 2
ORDER BY 
    COUNT(s.challenge_id) DESC,
    h.hacker_id;