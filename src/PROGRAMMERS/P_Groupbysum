-- https://school.programmers.co.kr/learn/courses/30/lessons/144855
-- 2022년 1월의 카테고리 별 도서 판매량을 합산하고, 카테고리(CATEGORY), 총 판매량(TOTAL_SALES) 리스트를 출력하는 SQL문
-- 카테고리명을 기준으로 오름차순 정렬

SELECT B.CATEGORY, SUM (BS.SALES) AS TOTAL_SALES
FROM BOOK_SALES AS BS
INNER JOIN BOOK AS B
ON BS.BOOK_ID = B.BOOK_ID
WHERE BS.SALES_DATE LIKE '2022-01-%'
GROUP BY CATEGORY
ORDER BY CATEGORY;