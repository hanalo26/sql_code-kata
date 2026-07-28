-- 585. Investments in 2016
-- 링크: https://leetcode.com/problems/investments-in-2016/description/
-- 작성일: 2026.07.28

/*
tiv_2016의 총합 출력하기
- tiv_2015이 같은 컬럼 내에서 한 개 이상 중복된 값을 가질 것
- (lat, lon)이 유일할 것
- 전체 답은 소수점 아래 2자리로 출력할 것
*/
SELECT ROUND(SUM(tiv_2016),2) AS tiv_2016
FROM Insurance
WHERE tiv_2015 IN (
    -- 조건 1
    SELECT tiv_2015
    FROM Insurance
    GROUP BY tiv_2015
    HAVING COUNT(*) > 1
) 
AND (lat, lon) IN (
    -- 조건 2
    SELECT lat, lon
    FROM Insurance
    GROUP BY lat, lon
    HAVING COUNT(*) = 1
);