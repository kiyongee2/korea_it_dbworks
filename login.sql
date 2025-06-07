-- DDL - ALTER(테이블 구조 변경)
CREATE TABLE login(
    id  VARCHAR2(10) PRIMARY KEY,
    pwd VARCHAR2(20) NOT NULL
);

INSERT INTO login VALUES ('cloud100', 'sky123$$$');
-- 'id'열(칼럼)에 대한 값이 너무 큼
-- INSERT INTO login VALUES ('mountain1004', 'sky123$$$');

-- 칼럼 타입 변경 - 자료형의 크기(10byte -> 20byte)
ALTER TABLE login MODIFY id VARCHAR2(20);

INSERT INTO login VALUES ('mountain1004', 'sky123$$$');

-- 새로운 칼럼 추가 (칼럼명 타입)
ALTER TABLE login ADD name VARCHAR2(30);

INSERT INTO login(id, pwd, name)
VALUES ('player2025', 'sky123$$$', '이정후');

-- id가 'cloud100'인 회원의 이름을 "흰구름"으로 수정하시오.
UPDATE login SET name = '흰구름'
WHERE id = 'cloud100';

-- 이름이 null인 회원의 정보를 검색하시오
SELECT * FROM login WHERE name is null;

-- 이름이 구름으로 끝나는 회원을 검색하시오
-- 문자 검색시 전체가 아닌 특정 부분만 검색할 때 %를 사용함
SELECT * FROM login WHERE name LIKE '%구름%';

SELECT * FROM login;








