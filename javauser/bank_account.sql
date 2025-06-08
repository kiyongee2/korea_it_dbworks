-- 은행 계좌(BankAccount) 테이블 생성

CREATE TABLE bank_account(
    ano     VARCHAR2(10) PRIMARY KEY,
    owner   VARCHAR2(20) NOT NULL,
    balance NUMBER(10) NOT NULL
);

SELECT * FROM bank_account;

-- 계좌 생성
INSERT INTO bank_account VALUES ('1111', '나저축', 10000);

COMMIT; -- 커밋 완료