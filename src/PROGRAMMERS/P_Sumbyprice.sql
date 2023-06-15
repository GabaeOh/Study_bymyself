-- ref : https://school.programmers.co.kr/learn/courses/30/lessons/131533
-- 상품코드 별 매출액(판매가 * 판매량) 합계를 출력하는 SQL문
-- 매출액을 기준으로 내림차순 정렬해주시고 매출액이 같다면 상품코드를 기준으로 오름차순 정렬

SELECT T_PRO.PRODUCT_CODE, SUM(T_OFF.SALES_AMOUNT * T_PRO.PRICE) AS SALES
FROM PRODUCT AS T_PRO
    INNER JOIN OFFLINE_SALE AS T_OFF
    ON T_PRO.PRODUCT_ID = T_OFF.PRODUCT_ID
GROUP BY T_PRO.PRODUCT_CODE
ORDER BY SALES DESC, T_PRO.PRODUCT_CODE;