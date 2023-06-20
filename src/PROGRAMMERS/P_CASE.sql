-- https://school.programmers.co.kr/learn/courses/30/lessons/164672
-- 2022년 10월 5일에 등록된 중고거래 게시물의 게시글 ID, 작성자 ID, 게시글 제목, 가격, 거래상태를 조회하는 SQL문
-- 거래상태가 SALE 이면 판매중, RESERVED이면 예약중, DONE이면 거래완료 분류하여 출력
-- 게시글 ID를 기준으로 내림차순 정렬

SELECT BOARD_ID, WRITER_ID, TITLE, PRICE,
  CASE 
    WHEN STATUS = 'SALE' THEN '판매중'  -- select문에 조건은 case when으로 걸어준다.
    WHEN STATUS = 'RESERVED' THEN '예약중'
    WHEN STATUS = 'DONE' THEN '거래완료'
  END AS STATUS
FROM USED_GOODS_BOARD
WHERE CREATED_DATE = '2022-10-05' 
ORDER BY BOARD_ID DESC;