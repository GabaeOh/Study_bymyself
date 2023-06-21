-- ref : https://school.programmers.co.kr/learn/courses/30/lessons/59411
-- 입양을 간 동물 중, 보호 기간이 가장 길었던 동물 두 마리의 아이디와 이름을 조회하는 SQL문
-- 결과는 보호 기간이 긴 순으로 조회

SELECT T_OUTS.ANIMAL_ID, T_OUTS.NAME
FROM ANIMAL_OUTS AS T_OUTS
    INNER JOIN ANIMAL_INS AS T_INS
    ON T_OUTS.ANIMAL_ID = T_INS.ANIMAL_ID
ORDER BY DATEDIFF(T_OUTS.DATETIME, T_INS.DATETIME) DESC  -- DATEDIFF() 함수는 두개의 날짜값의 차이를 int로 반환하는 Mssql 내장함수
LIMIT 2
 ;