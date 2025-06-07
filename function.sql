-- 내장 함수
-- 수학관련 : 절대값, 반올림, 버림

SELECT ABS(-10) FROM DUAL; --10

-- 소수 첫째자리 반올림
SELECT ROUND(3.875, 1) FROM DUAL;  --3.9
SELECT ROUND(3.875, 0) FROM DUAL;  --4

-- 소수 첫째자리 버림
SELECT TRUNC(3.875, 1) FROM DUAL; --3.8

-- 고객별 평균 주문 금액을 백원 단위로 반올림한 값 계산
SELECT custid AS 고객번호,
       ROUND(AVG(saleprice), -2) AS 평균금액
FROM orders
GROUP BY custid;

-- 문자 타입 함수
-- 문자 변경
SELECT REPLACE('ABCD', 'A', 'E') RESULT FROM DUAL;
-- 문자 추출
SELECT SUBSTR('ABCD', 1, 2) RESULT FROM DUAL;

-- 날짜 함수
-- 현재 날짜 출력
SELECT SYSDATE FROM DUAL;

-- 현재 날짜와 시간 출력
SELECT SYSTIMESTAMP FROM DUAL;

-- 20일전의 날짜 출력
SELECT SYSDATE - 20 FROM DUAL;

-- 3개월후 날짜
SELECT ADD_MONTHS(SYSDATE, 3) 결과 FROM DUAL;

-- 특정일에서 3개월 전의 날짜
SELECT ADD_MONTHS('2025/6/3', -3) 결과 FROM DUAL;

-- 특정한 날에서 10일 후
SELECT TO_DATE('2025/6/3') + 10 결과 FROM DUAL;

-- 서점은 주문일로부터 10일후 매출을 확정한다.
-- 각 주문의 확정일자를 구하시오
SELECT orderid 주문번호,
       orderdate 주문일,
       TO_DATE(orderdate) + 10 확정일  
FROM orders;





