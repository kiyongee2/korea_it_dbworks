-- 부서와 사원 테이블 관계 설정
-- 기본키와 외래키
-- 부서와 사원의 관계(1 대 다)
CREATE TABLE dept(
    deptid  NUMBER PRIMARY KEY, -- 부서번호(기본키)
    deptname  VARCHAR2(20) NOT NULL,-- 부서이름
    location  VARCHAR2(20) NOT NULL-- 위치
);

CREATE TABLE emp(
    empid   NUMBER PRIMARY KEY,    -- 사원번호(기본키)
    empname VARCHAR2(20) NOT NULL, -- 사원이름
    age     NUMBER,                 -- 나이
    deptid  NUMBER,                  -- 부서번호
    FOREIGN KEY(deptid) REFERENCES dept(deptid) -- 외래키
);

-- 부서 자료 추가
INSERT INTO dept VALUES (10, '전산팀', '서울');
INSERT INTO dept VALUES (20, '총무팀', '인천');

-- 사원 자료 추가
INSERT INTO emp VALUES (101, '이강', 22, 10);
INSERT INTO emp VALUES (102, '김산', 28, 20);
INSERT INTO emp VALUES (103, '테스터', 28, 20);

 -- 삽입 이상 - 무결성 제약조건에 위배(부모의 부서코드 없음)
INSERT INTO emp VALUES (103, '한강', 28, 30); 

-- 부서 삭제 - 삭제 이상 : 무결성 제약조건에 위배(참조하는 자식 레코드 있음)
DELETE FROM dept WHERE deptid = 10;

-- 사원 삭제 : 이름이 '테스터'인 사원 삭제
DELETE FROM emp WHERE empname = '테스터';

-- 부서 자료 검색
SELECT * FROM dept;

-- 사원 자료 검색
SELECT * FROM emp;

-- 테이블 삭제
DROP TABLE dept;
DROP TABLE emp;




