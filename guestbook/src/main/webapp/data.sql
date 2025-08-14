CREATE TABLE tbl_guestbook (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(50) NOT NULL,
    message CLOB NOT NULL,
    created_at DATE DEFAULT SYSDATE
);

select * from tbl_guestbook;




INSERT INTO tbl_guestbook (id, name, message) 
VALUES (1, '홍길동', '안녕하세요! 방명록 첫 글입니다.');

INSERT INTO tbl_guestbook (id, name, message) 
VALUES (2, '김영희', '오늘 날씨가 참 좋네요.');

INSERT INTO tbl_guestbook (id, name, message) 
VALUES (3, '이철수', '방문 기념으로 글 남깁니다.');

INSERT INTO tbl_guestbook (id, name, message) 
VALUES (4, '박민수', '좋은 하루 되세요!');

INSERT INTO tbl_guestbook (id, name, message) 
VALUES (5, '최지현', '정말 예쁘네요!');
