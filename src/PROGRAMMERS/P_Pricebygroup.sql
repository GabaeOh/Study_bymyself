--ref : https://school.programmers.co.kr/learn/courses/30/lessons/131530
-- 테이블에서 만원 단위의 가격대 별로 상품 개수를 출력하는 SQL 문
-- 컬럼명은 각각 컬럼명은 PRICE_GROUP, PRODUCTS로 지정, 가격대를 기준으로 오름차순 정렬
-- 격대 정보는 각 구간의 최소금액(10,000원 이상 ~ 20,000 미만인 구간인 경우 10,000)으로 표시

SELECT  TRUNCATE (PRICE,-4) AS PRICE_GROUP, COUNT(PRODUCT_ID) AS PRODUCTS  -- 만원단위별로 그룹핑하기 위해서는 TRUNCATE를 이용해서 천원이하를 버린다.
FROM PRODUCT 
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP;