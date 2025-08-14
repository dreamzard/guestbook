create table tbl_resv(
	resv_no char(8) not null primary key,
	resv_date char(8),
	court_no char(4),
	cust_no char(4)
);

select * from tbl_resv;
insert into TBL_RESV values('20230001', '20230101', 'C001', '1005');
insert into TBL_RESV values('20230002', '20230101', 'C002', '1004');
insert into TBL_RESV values('20230003', '20230101', 'C003', '1003');
insert into TBL_RESV values('20230004', '20230101', 'C004', '1002');
insert into TBL_RESV values('20230005', '20230101', 'C005', '1001');



