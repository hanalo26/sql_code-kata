-- 1517. Find Users With Valid E-Mails
-- 링크:https://leetcode.com/problems/find-users-with-valid-e-mails/description/
-- 작성일: 2026.07.26

SELECT *
FROM Users
WHERE
    -- (1) @leetcode.com로 끝나는가?
    mail LIKE "%@leetcode.com"

    -- (2) 아이디부분의 첫글자가 알파벳인가?
    AND (
        LEFT(mail,1) BETWEEN 'a' AND 'z'
        OR LEFT(mail,1) BETWEEN 'A' AND 'Z'
    )

    -- (3) 아이디부분에 허용된 특수문자만 존재하는가?
    AND NOT (
        LEFT(mail, LENGTH(mail)-13) LIKE "%!%"
        OR LEFT(mail, LENGTH(mail)-13) LIKE "%#%"
        OR LEFT(mail, LENGTH(mail)-13) LIKE "%$%"
        OR LEFT(mail, LENGTH(mail)-13) LIKE "%^%"
        OR LEFT(mail, LENGTH(mail)-13) LIKE "%~%"
        OR LEFT(mail, LENGTH(mail)-13) LIKE "%&%"
        OR LEFT(mail, LENGTH(mail)-13) LIKE "%*%"
        OR LEFT(mail, LENGTH(mail)-13) LIKE "%/ %" -- 공백 포함
    );