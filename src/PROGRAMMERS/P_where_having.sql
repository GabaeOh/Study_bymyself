-- ref : https://school.programmers.co.kr/learn/courses/30/lessons/164668
-- 완료된 중고 거래의 총금액이 70만 원 이상인 사람의 회원 ID, 닉네임, 총거래금액을 조회하는 SQL문
-- 총거래금액을 기준으로 오름차순 정렬

SELECT USER.USER_ID, USER.NICKNAME, 
        SUM (BOARD.PRICE) AS TOTAL_SALES
FROM USED_GOODS_BOARD as BOARD
INNER JOIN USED_GOODS_USER AS USER
    ON BOARD.WRITER_ID = USER.USER_ID
WHERE BOARD.status = 'DONE'
GROUP BY USER.USER_ID, USER.NICKNAME
HAVING SUM(BOARD.PRICE) >= 700000 
ORDER BY TOTAL_SALES ASC;