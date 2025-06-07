-- employee 테이블
-- 자료형 1.문자 - VARCHAR2(10), 2. 숫자 - NUMBER, 3. 날짜 - DATE
CREATE TABLE employee(
    -- 칼럼명 자료형
    id     CHAR(4) PRIMARY KEY,  -- 사원 아이디(기본키)
    name   VARCHAR2(20) NOT NULL,  -- 이름(필수 입력-NULL 불허)
    salary NUMBER         -- 급여
);

-- 자료 추가
INSERT INTO employee(id, name, salary) VALUES ('e101', '신유빈', 3000000);
INSERT INTO employee(id, name, salary) VALUES ('e102', '이정후', 2000000);
-- 무결성 제약조건 위배(기본키는 중복 불허)
--INSERT INTO employee(id, name) VALUES ('e102', '임시현');
INSERT INTO employee(id, name) VALUES ('e103', '임시현');
-- 무결성 제약조건 위배(NOT NULL은 필수 입력함)
-- INSERT INTO employee(id, salary) VALUES ('e104', 2500000);

-- 급여가 250만원 이상인 사원을 검색
SELECT * FROM employee WHERE salary >= 2500000;

-- 이름이 이정후인 사원을 검색
SELECT * FROM employee WHERE name = '이정후';
SELECT * FROM employee WHERE name LIKE '이정후';

-- 이름에 정후가 포함된 사원을 검색
SELECT * FROM employee WHERE name LIKE '%정후%';

-- 급여가 없는 사원 검색
SELECT * FROM employee WHERE salary IS NULL;

-- 급여가 없는 사원에게 4000000만원을 지급하세요
UPDATE employee SET salary = 4000000 WHERE name LIKE '임시현';

-- 아이디가 'e102'인 사원의 이름을 '이종범'으로 변경하고 급여를 500만원으로 수정
UPDATE employee SET name = '이종범', salary = 5000000
WHERE id = 'e102';

-- 전체 검색
SELECT * FROM employee;

COMMIT;  -- 커밋(변경된 내용을 DB에 적용)

DROP TABLE employee; -- 테이블 삭제





