-- ref : https://school.programmers.co.kr/learn/courses/30/lessons/131536
-- 재구매한 회원 ID와 재구매한 상품 ID를 출력하는 SQL문
-- 회원 ID를 기준으로 오름차순 정렬해주시고 회원 ID가 같다면 상품 ID를 기준으로 내림차순 정렬

SELECT USER_ID, PRODUCT_ID
FROM ONLINE_SALE
GROUP BY USER_ID, PRODUCT_ID -- 재구매한 회원 및 상품이기에 2개의 컬럼으로 그룹핑
HAVING COUNT(USER_ID) >= 2 -- 2개 이상으로 조건을 주어 재구매의 조건 만족시키기
ORDER BY USER_ID, PRODUCT_ID DESC;