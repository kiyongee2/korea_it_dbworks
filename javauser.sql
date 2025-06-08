-- 새 계정 만들기

-- 세션 설정
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

-- javauser 계정 및 비밀번호 생성
CREATE USER javauser IDENTIFIED BY pwjava;

-- 권한 부여
GRANT RESOURCE, CONNECT, DBA TO javauser;
