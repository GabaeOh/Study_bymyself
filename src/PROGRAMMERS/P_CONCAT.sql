-- ref : https://school.programmers.co.kr/learn/courses/30/lessons/164670

-- 중고 거래 게시물을 3건 이상 등록한 사용자의 사용자 ID, 닉네임, 전체주소, 전화번호를 조회하는 SQL문
-- 전체 주소는 시, 도로명 주소, 상세 주소가 함께 출력
-- 전화번호의 경우 xxx-xxxx-xxxx 같은 형태로 하이픈 문자열(-)을 삽입하여 출력
-- 회원 ID를 기준으로 내림차순 정렬

SELECT US.USER_ID, US.NICKNAME, 
    CONCAT(US.CITY,' ', US.STREET_ADDRESS1,' ', US.STREET_ADDRESS2) AS 전체주소, -- CONCAT
    CONCAT(
    SUBSTRING(TLNO, 1, 3), '-', 
    SUBSTRING(TLNO, 4, 4), '-', 
    SUBSTRING(TLNO, 8)
    ) AS 전화번호
FROM USED_GOODS_BOARD AS BO
LEFT OUTER JOIN USED_GOODS_USER AS US
ON BO.WRITER_ID = US.USER_ID
GROUP BY BO.WRITER_ID
HAVING COUNT (BO.WRITER_ID) >= 3 -- 괄호 
ORDER BY US.USER_ID DESC;