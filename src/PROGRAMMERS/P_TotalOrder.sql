-- ref : https://school.programmers.co.kr/learn/courses/30/lessons/133026
-- 상반기 동안 각 아이스크림 성분 타입과 성분 타입에 대한 아이스크림의 총주문량을 총주문량이 작은 순서대로 조회하는 SQL 문
-- 총주문량을 나타내는 컬럼명은 TOTAL_ORDER

SELECT INGREDIENT_TYPE, SUM(TOTAL_ORDER) AS TOTAL_ORDER  -- '총' 주문량이기에 sum
FROM FIRST_HALF AS T_HALF
    INNER JOIN ICECREAM_INFO AS T_INFO
    ON T_HALF.FLAVOR = T_INFO.FLAVOR 
GROUP BY INGREDIENT_TYPE
ORDER BY TOTAL_ORDER;