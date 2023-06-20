-- ref = https://school.programmers.co.kr/learn/courses/30/lessons/144854
-- 경제' 카테고리에 속하는 도서들의 도서 ID(BOOK_ID), 저자명(AUTHOR_NAME), 출판일(PUBLISHED_DATE) 리스트를 출력하는 SQL문
-- 출판일을 기준으로 오름차순 정렬

SELECT T_BOOK.BOOK_ID, T_AUTH.AUTHOR_NAME, DATE_FORMAT(T_BOOK.PUBLISHED_DATE, '%Y-%m-%d') as PUBLISHED_DATE
FROM AUTHOR AS T_AUTH
    INNER JOIN BOOK AS T_BOOK
    ON T_AUTH.AUTHOR_ID = T_BOOK.AUTHOR_ID
WHERE CATEGORY = '경제'
ORDER BY T_BOOK.PUBLISHED_DATE ;