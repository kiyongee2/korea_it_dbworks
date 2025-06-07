-- book 테이블 생성

CREATE TABLE book(
    bookid  NUMBER PRIMARY KEY,
    bookname  VARCHAR2(40) NOT NULL,
    publisher VARCHAR2(40) NOT NULL,
    price   NUMBER NOT NULL
);

-- 자료 삽입
INSERT INTO book VALUES(1, '축구의 역사', '굿스포츠', 7000);
INSERT INTO book VALUES(2, '축구아는 여자', '나무수', 13000);
INSERT INTO book VALUES(3, '축구의 이해', '대한미디어', 22000);
INSERT INTO book VALUES(4, '축구의 바이블', '대한미디어', 35000);
INSERT INTO book VALUES(5, '피겨 교본', '굿스포츠', 8000);
INSERT INTO book VALUES (6, '양궁의 실제', '굿스포츠', 6000);
INSERT INTO book VALUES (7, '야구의 추억', '이상미디어', 20000);
INSERT INTO book VALUES (8, '야구를 부탁해', '이상미디어', 13000);
INSERT INTO book VALUES (9, '올림픽 이야기', '삼성당', 7500);
INSERT INTO book VALUES (10, 'Olympic Champions', 'Pearson', 13000);

-- 자료 검색
SELECT * FROM book;

-- 모든 도서의 이름과 가격을 검색
SELECT bookname, price FROM book;

-- 모든 출판사 검색(중복 제거)
SELECT DISTINCT publisher FROM book;

-- 가격이 10000원 이상이고, 20000원 이하인 도서 검색
SELECT * FROM book WHERE price >= 10000 AND price <= 20000;
SELECT * FROM book WHERE price BETWEEN 10000 AND 20000;

-- 출판사가 '굿스포츠' 혹은 '대한미디어'인 도서 검색
SELECT * FROM book WHERE publisher IN('굿스포츠', '대한미디어');
SELECT * FROM book WHERE publisher = '굿스포츠' OR publisher = '대한미디어';

-- '축구의 역사'를 출간한 출판사 검색
SELECT publisher FROM book WHERE bookname LIKE '축구의 역사';

-- '축구'가 포함된 출판사 검색
SELECT publisher FROM book WHERE bookname LIKE '%축구%';

-- 도서를 이름순으로 정렬(생략하면 ASC, 내림차순-DESC)
SELECT * FROM book ORDER BY bookname DESC;

-- 집계함수 : SUM(), AVG(), COUNT(), MAX()
-- 도서의 총개수
SELECT COUNT(*) AS 총개수 FROM book;

-- 도서의 가격 평균
SELECT AVG(price) AS 평균가격 FROM book;



