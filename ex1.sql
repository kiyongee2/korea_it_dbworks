SHOW USER;

CREATE TABLE ex1(
    column1 CHAR(10),   -- 고정길이
    column2 VARCHAR(10) -- 가변길이
);

-- 자료 추가
INSERT INTO ex1(column1, column2) VALUES ('abc', 'abc');
INSERT INTO ex1 VALUES ('노원', '노원');

-- 자료 검색
SELECT column1, LENGTH(column1) len1, column2, LENGTH(column2) len2 FROM ex1;