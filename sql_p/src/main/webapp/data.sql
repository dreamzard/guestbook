
/* 테이블: 사업자 정보 */
create table tbl_seller(
s_id char(10) primary key, /* 판매자 아이디 */
join_date varchar2(8), /* 가입 일자 */
obj_number number(10), /* 판매하는 물건 갯수 */
total number(37) /* 총매출 */
);

insert into tbl_seller
values('s_3as4bc7j', '20220708', 32, 10000000);
insert into tbl_seller
values('s_j56tyu78', '20210401', 27, 6000000);



select * from tbl_seller;




/* 테이블: 상품정보 */
create table tbl_object(
o_id char(10) primary key, /* 물건 아이디 */
s_id char(10), /* 판매자 아이디 */
insert_date varchar2(8), /* 상품 등록 일자 */
order_num number(20) /* 누적 판매 갯수 */
);

insert into tbl_object
values('o_123jkllm', 's_3as4bc7j', '20230101', 741);
insert into tbl_object
values('o_678dbe6', 's_3as4bc7j', '20230501', 946);
insert into tbl_object
values('o_ert56vb9', 's_j56tyu78', '20210709', 266);



select * from tbl_object;




/* join 연습 */
select s.s_id, o.o_id, o.order_num 
from tbl_seller s 
join tbl_object o 
on s.s_id = o.s_id;


/* 집계함수 */
select s_id, avg(order_num) 
from tbl_object
group by s_id;

