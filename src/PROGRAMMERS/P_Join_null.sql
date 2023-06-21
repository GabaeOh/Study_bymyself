-- https://school.programmers.co.kr/learn/courses/30/lessons/59044
-- 입양을 못 간 동물 중, 가장 오래 보호소에 있었던 동물 3마리의 이름과 보호 시작일을 조회하는 SQL문
-- 결과는 보호 시작일 순

SELECT T_INS.NAME, T_INS.DATETIME
FROM ANIMAL_OUTS AS T_OUTS
    RIGHT JOIN ANIMAL_INS AS T_INS
    ON T_OUTS.ANIMAL_ID = T_INS.ANIMAL_ID
WHERE T_OUTS.ANIMAL_ID IS NULL -- 교집합부분을 빼고 싶으면 " 연결된 key는 null을 활용"
ORDER BY T_INS.DATETIME
LIMIT 3;