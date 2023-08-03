-- https://school.programmers.co.kr/learn/courses/30/lessons/157340
-- 2022년 10월 16일에 대여 중인 자동차인 경우 '대여중' 이라고 표시하고, 대여 중이지 않은 자동차인 경우 '대여 가능'을 표시하는 컬럼(컬럼명: AVAILABILITY)을 추가하여 자동차 ID와 AVAILABILITY 리스트를 출력하는 SQL문
-- 반납 날짜가 2022년 10월 16일인 경우에도 '대여중'으로 표시해주시고 결과는 자동차 ID를 기준으로 내림차순 정렬

SELECT CAR_ID, 
 CASE 
    WHEN '2022-10-16' BETWEEN START_DATE AND END_DATE THEN '대여중'
    ELSE '대여 가능'
  END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE END_DATE >= '2022-10-16' 
GROUP BY CAR_ID -- GROUP BY 1은 첫번째 컬럼을 의미함 
ORDER BY CAR_ID DESC;

