-- ref : https://school.programmers.co.kr/learn/courses/30/lessons/164671

-- 조회수가 가장 높은 중고거래 게시물에 대한 첨부파일 경로를 조회하는 SQL문
-- 첨부파일 경로는 FILE ID를 기준으로 내림차순 정렬
-- 기본적인 파일경로는 /home/grep/src/ 이며, 게시글 ID를 기준으로 디렉토리가 구분
-- 파일이름은 파일 ID, 파일 이름, 파일 확장자로 구성되도록 출력
-- 조회수가 가장 높은 게시물은 하나만 존재

SELECT 
    CONCAT('/home/grep/src/',BOARD.BOARD_ID,'/', FILE.FILE_ID, FILE.FILE_NAME, FILE.FILE_EXT) AS FILE_PATH 
FROM USED_GOODS_BOARD AS BOARD
INNER JOIN USED_GOODS_FILE AS FILE 
    ON BOARD.BOARD_ID = FILE.BOARD_ID
WHERE BOARD.VIEWS = (
    SELECT MAX(VIEWS) FROM USED_GOODS_BOARD  -- 서브쿼리 사용 
)
ORDER BY FILE.FILE_ID DESC ;