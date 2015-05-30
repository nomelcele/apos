alter table shop add(shop_id varchar2(30)constraint shop_shop_id_uq UNIQUE);
alter table shop add(shop_pwd varchar2(30));
ALTER TABLE comm drop column COMM_EMOTI;


alter table product MODIFY  pro_name varchar2(50);
alter table product modify pro_code varchar2(50);


alter table member add(mem_email varchar2(50));
--05.22 ����
alter table shop modify shop_adr varchar2(300);
alter table member modify mem_addr varchar2(200);
alter table member modify mem_deaddr varchar2(200);

--05.22staff ���̺� �߰�
create table staff(
staff_num number constraint staff_staff_num_pk primary key,
staff_name varchar2(20),
staff_position varchar2(30),
staff_tel varchar2(30),
staff_shopnum number(10), constraint staff_staff_shopnum_fk foreign key (staff_shopnum)
REFERENCES shop(shop_num) on delete cascade);


Create sequence staff_seq
increment by 1 start with 1;



--05.23staff ����
alter table staff MODIFY  staff_position number(10);
alter table staff add(staff_id varchar(30) constraint staff_staff_id_uq unique);
alter table staff add(staff_pwd varchar(30));

--05.23product �����߰�
alter table product add(pro_price number(30));
--������ �ڷ��� �Ǽ� 
alter table staff modify staff_id varchar2(30);
alter table staff modify staff_pwd varchar2(30);

-- 05.25 hotket table ����



--05.26 product�� stock����
alter table product drop (pro_size);
alter table stock add (sto_size number(10));


--------05.28 ������
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






--5�� 30�� shop update

update shop set shop_adr ='��� ������ �д籸 ������ 19-2',shop_map_x=37.40204647623572,
shop_map_y=127.10684335373502
where shop_num =1;


update shop set shop_adr ='��� ���ν� ������ ��õ�� 167-3',shop_map_x=37.3428224996058,
shop_map_y=127.09584646275563
where shop_num =2;


update shop set shop_adr ='��� ������ �д籸 ������ 308-5',shop_map_x=37.351022366407115,
shop_map_y=127.08328364364016
where shop_num =3;


update shop set shop_adr ='�λ� ������ ���ϵ� 6-2',shop_map_x=35.06482438973066,
shop_map_y=128.8344970582681
where shop_num =4;


update shop set shop_adr ='���� ���ֽ� ������ ������2�� 695-4',shop_map_x=35.84023391832469,
shop_map_y=127.11011097659303
where shop_num =5;


update shop set shop_adr ='��� ���걺 ������ ������ 45-4',shop_map_x=36.837629502174885,
shop_map_y=127.87371785721318
where shop_num =6;


update shop set shop_adr ='���� ������ ���� 1817-1',shop_map_x=37.76914501306567,
shop_map_y=128.8764614299281
where shop_num =7;


update shop set shop_adr ='���� ���ʱ� ��� 1-645',shop_map_x=37.45218487496482,
shop_map_y=127.08273452271757
where shop_num =8;


update shop set shop_adr ='���� ���ʱ� ���絿 326-7',shop_map_x=37.469091931237145,
shop_map_y=127.04029419192628
where shop_num =9;


update shop set shop_adr ='���� ������ ���ﵿ 837-12',shop_map_x=37.469091931237145,
shop_map_y=127.04029419192628
where shop_num =10;


update shop set shop_adr ='���� ��걸 �ѳ��� 1-44',shop_map_x=37.53686724569219,
shop_map_y=127.01283067396385
where shop_num =11;


update shop set shop_adr ='���� ������ ������ 168-1',shop_map_x=37.54270530892465,
shop_map_y=127.0162206395068
where shop_num =12;


update shop set shop_adr ='���� �߱� �Ŵ絿 369-2',shop_map_x=37.55440976930857,
shop_map_y=127.01216596738618
where shop_num =13;


update shop set shop_adr ='���� ������ ������ 22-1',shop_map_x=37.562469066808234,
shop_map_y=127.03522285390758
where shop_num =14;


update shop set shop_adr ='��� �����ν� ���ɵ� 71',shop_map_x=37.7552675451157,
shop_map_y=127.0430815604703
where shop_num =15;


update shop set shop_adr ='��� �����ֽ� ��� 617-64',shop_map_x=37.606115126550804,
shop_map_y=127.1588614971094
where shop_num =16;


update shop set shop_adr ='��� ���ν� ������ ������ 23-2',shop_map_x=37.331849822249275,
shop_map_y=127.13541574743911
where shop_num =17;


update shop set shop_adr ='��� ������ �д籸 ���̵� 197-1',shop_map_x=37.33999195250548,
shop_map_y=127.10783873699809
where shop_num =18;


update shop set shop_adr ='���� ���ı� ��ǵ� 8',shop_map_x=37.51503979762339,
shop_map_y=127.0995048878191
where shop_num =19;


update shop set shop_adr ='���� ������ ȭ�絿 1',shop_map_x=37.5374815841365,
shop_map_y=127.07846688436801
where shop_num =20;