-- ref : https://school.programmers.co.kr/learn/courses/30/lessons/157341
-- 자동차 종류가 '세단'인 자동차들 중 10월에 대여를 시작한 기록이 있는 자동차 ID 리스트를 출력하는 SQL문
-- 자동차 ID 리스트는 중복이 없어야 하며, 자동차 ID를 기준으로 내림차순 정렬

SELECT DISTINCT CAR.CAR_ID  -- 중복제거후 조회 DISTINCT 
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY AS HISTORY
INNER JOIN CAR_RENTAL_COMPANY_CAR AS CAR
ON HISTORY.CAR_ID = CAR.CAR_ID 
WHERE CAR.CAR_TYPE	= '세단' AND HISTORY.START_DATE LIKE '2022-10-%'
ORDER BY CAR.CAR_ID DESC ;