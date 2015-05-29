alter table shop add(shop_id varchar2(30)constraint shop_shop_id_uq UNIQUE);
alter table shop add(shop_pwd varchar2(30));
ALTER TABLE comm drop column COMM_EMOTI;


alter table product MODIFY  pro_name varchar2(50);
alter table product modify pro_code varchar2(50);


alter table member add(mem_email varchar2(50));
--05.22 수정
alter table shop modify shop_adr varchar2(300);
alter table member modify mem_addr varchar2(200);
alter table member modify mem_deaddr varchar2(200);

--05.22staff 테이블 추가
create table staff(
staff_num number constraint staff_staff_num_pk primary key,
staff_name varchar2(20),
staff_position varchar2(30),
staff_tel varchar2(30),
staff_shopnum number(10), constraint staff_staff_shopnum_fk foreign key (staff_shopnum)
REFERENCES shop(shop_num) on delete cascade);


Create sequence staff_seq
increment by 1 start with 1;



--05.23staff 수정
alter table staff MODIFY  staff_position number(10);
alter table staff add(staff_id varchar(30) constraint staff_staff_id_uq unique);
alter table staff add(staff_pwd varchar(30));

--05.23product 가격추가
alter table product add(pro_price number(30));
--스테프 자료형 실수 
alter table staff modify staff_id varchar2(30);
alter table staff modify staff_pwd varchar2(30);

-- 05.25 hotket table 수정



--05.26 product와 stock수정
alter table product drop (pro_size);
alter table stock add (sto_size number(10));


--------05.28 수정본
alter table product add constraint product_pro_code_uq unique (pro_code);

drop table sell;
drop table stock;


create table sell(
sell_num number(10) constraint sell_sell_num_pk primary key,
sell_pronum varchar2(50),
sell_cash number(20) constraint sell_sell_cash_nn not null,
sell_mileage number(20) constraint sell_sell_mileage_nn not null,
sell_shopnum number(10) ,
sell_memnum number(10),
sell_date date,
sell_sell number(10),
sell_many number(10),
constraint sell_sell_pronum_fk foreign key(sell_pronum)
references product(pro_code) on delete cascade,
constraint sell_sell_shopnum_fk foreign key(sell_shopnum)
references shop(shop_num) on delete cascade,
constraint sell_sell_memnum_fk foreign key(sell_memnum)
references member(mem_num) on delete cascade);

create table stock(
sto_num number(10) constraint stock_sto_num_pk primary key,
sto_pronum varchar2(50),
sto_amount number(10),
sto_shopnum number(10),
sto_size number(10),
constraint stock_sto_pronum_fk foreign key(sto_pronum)
references product(pro_code) on delete cascade,
constraint stock_sto_shopnum_fk foreign key(sto_shopnum)
references shop(shop_num) on delete cascade
);

commit;