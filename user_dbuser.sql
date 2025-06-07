
-- 새 계정 만들고 권한 설정
-- 1. 세션 설정(순서대로)
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

-- 2. dbuser 생성(계정이름, 비번 설정)
CREATE USER dbuser IDENTIFIED BY pwuser;

-- 3. 권한 부여
GRANT CONNECT, RESOURCE, DBA TO dbuser;