-- ref : https://school.programmers.co.kr/learn/courses/30/lessons/59043
-- 보호 시작일보다 입양일이 더 빠른 동물의 아이디와 이름을 조회하는 SQL문
-- 결과는 보호 시작일이 빠른 순

SELECT T_OUTS.ANIMAL_ID, T_OUTS.NAME
FROM ANIMAL_OUTS AS T_OUTS
    LEFT JOIN  ANIMAL_INS AS T_INS
    ON T_OUTS.ANIMAL_ID = T_INS.ANIMAL_ID 
WHERE T_OUTS.DATETIME < T_INS.DATETIME
ORDER BY T_INS.DATETIME;