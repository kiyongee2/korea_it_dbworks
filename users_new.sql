
-- users 테이블 생성
CREATE TABLE users(
    userid  VARCHAR2(10) PRIMARY KEY,     -- 아이디
    userpassword  VARCHAR2(100) NOT NULL, -- 비밀번호
    username  VARCHAR2(20) NOT NULL,      -- 이름
    userage  NUMBER(3)                    -- 나이
);

-- 회원 추가
INSERT INTO users(userid, userpassword, username, userage) 
VALUES ('today', 't1357!!@', '이정후', 26);

SELECT * FROM users;

-- 이정후를 이종범으로 변경하고 나이를 50세로 변경
UPDATE users SET username = '이종범', userage = 50 
WHERE userid = 'today';

COMMIT; -- 트랜잭션 수행(커밋 완료)











-- users 테이블 삭제
DROP TABLE users;