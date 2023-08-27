-- ref : https://school.programmers.co.kr/learn/courses/30/lessons/59413
-- 보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다. 
-- 0시부터 23시까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문
-- 결과는 시간대 순으로 정렬

-- RECURSIVE : 반복적으로 자기 자신을 참조하는 쿼리를 작성할 수 있게 해주는 기능
-- WITH RECURSIVE : 임시 테이블을 생성하고 이를 활용하여 재귀적인 작업을 수행
-- HOUR(B.DATETIME) : 시간만 추출 

WITH RECURSIVE A AS(  
    SELECT 0 AS HOUR
    UNION ALL
    SELECT HOUR+1 FROM A
    WHERE HOUR < 23 
)

SELECT A.HOUR,
    COUNT(ANIMAL_ID)AS COUNT
FROM A
LEFT OUTER JOIN ANIMAL_OUTS B 
    ON A.HOUR = HOUR(B.DATETIME)
GROUP BY A.HOUR
ORDER BY A.HOUR
