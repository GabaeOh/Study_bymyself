-- ref = https://school.programmers.co.kr/learn/courses/30/lessons/132202
-- 2022년 5월에 예약한 환자 수를 진료과코드 별로 조회하는 SQL문
-- 컬럼명은 '진료과 코드', '5월예약건수'로 지정해주시고 결과는 진료과별 예약한 환자 수를 기준으로 오름차순 정렬
-- 예약한 환자 수가 같다면 진료과 코드를 기준으로 오름차순 정렬

SELECT MCDP_CD AS 진료과코드, COUNT (PT_NO) AS 5월예약건수 
FROM APPOINTMENT
WHERE DATE_FORMAT(APNT_YMD,'%Y-%m') = '2022-05' -- 특정 달로 구간 설정하기 
GROUP BY MCDP_CD
ORDER BY COUNT(PT_NO) ASC , MCDP_CD ; -- 환자 '수'를 기준으로 임에 count 사용