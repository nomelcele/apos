drop table bonsa cascade constraint;
drop table stock cascade constraint;
drop table shop cascade constraint;
drop table sell cascade constraint;
drop table member cascade constraint;
drop table board cascade constraint;
drop table comm cascade constraint;
drop table chat cascade constraint;
drop table loginout cascade constraint;
drop table product cascade constraint;
drop table hotkey cascade constraint;
drop table discount cascade constraint;
drop table staff cascade constraint;
drop table croom cascade constraint;
drop table stockreq cascade constraint;
drop table calendar cascade constraint;

drop sequence bonsa_seq;
drop sequence member_seq;
drop sequence shop_seq;
drop sequence board_seq;
drop sequence comm_seq;
drop sequence chat_seq;
drop sequence loginout_seq;
drop sequence product_seq;
drop sequence sell_seq;
drop sequence hotkey_seq;
drop sequence stock_seq;
drop sequence discount_seq;
drop sequence staff_seq;
drop sequence stockreq_seq;
drop sequence sroot_seq;
drop sequence calendar_seq;


-- ���̺� ������ ����
Create sequence bonsa_seq
increment by 1 start with 1;

Create sequence member_seq
increment by 1 start with 1;

Create sequence shop_seq
increment by 1 start with 1;

Create sequence board_seq
increment by 1 start with 1;

Create sequence comm_seq
increment by 1 start with 1;

Create sequence chat_seq
increment by 1 start with 1;

Create sequence loginout_seq
increment by 1 start with 1;

Create sequence product_seq
increment by 1 start with 1;

Create sequence sell_seq
increment by 1 start with 1;

Create sequence hotkey_seq
increment by 1 start with 1;

Create sequence stock_seq
increment by 1 start with 1;

Create sequence discount_seq
increment by 1 start with 1;

Create sequence staff_seq
increment by 1 start with 1;

create sequence stockreq_seq
increment by 1
start with 1;

create sequence sroot_seq
increment by 1
start with 1;

---------------7/9 calendar sequence--------------------------
create sequence calendar_seq
increment by 1
start with 1;
create table bonsa(
bon_num number(10) constraint bonsa_bon_num_pk primary key,
bon_name varchar2(20) constraint bonsa_bon_name_nn not null,
bon_id varchar2(20) constraint bonsa_bon_id_nn not null,
bon_pwd varchar2(20) constraint bonsa_bon_pwd_nn not null,
bon_job varchar2(20) constraint bonsa_bon_job_nn not null,
bon_tel varchar2(30) constraint bonsa_bon_tel_nn not null,
bon_date date,
constraint bonsa_bon_id_uq unique(bon_id) 
);
--------------------------------------------------
create table shop(
shop_num number(10) constraint shop_shop_num_pk primary key,
shop_name varchar2(20) constraint shop_shop_name_nn not null,
shop_tel varchar2(20)constraint shop_shop_tel_nn not null,
shop_adr varchar2(300)constraint shop_shop_adr_nn not null,
shop_map_x float constraint shop_shop_map_x_nn not null,
shop_map_y float constraint shop_shop_map_y_nn not null,
shop_date date ,
shop_mail varchar2(30) constraint shop_shop_mail_nn not null,
shop_master varchar2(30) constraint shop_shop_master_nn not null,
shop_img varchar2(50) constraint shop_shop_img_nn not null,
shop_crnum number(20) constraint shop_shop_crnum_nn not null, 
shop_bonnum number(10) constraint shop_shop_bonnum_nn not null,
shop_id varchar2(30)constraint shop_shop_id_uq UNIQUE,
shop_pwd varchar2(30),
constraint shop_shop_bonnum_fk foreign key(shop_bonnum)
references bonsa(bon_num) on delete cascade ,
constraint shop_shop_crnum_uq unique (shop_crnum) 
);
---------------------------------------------------------
create table member(
mem_num number(10) constraint member_mem_num_pk primary key,
mem_name varchar2(20) constraint member_mem_name_nn not null,
mem_tel varchar2(20)constraint member_mem_tel_nn not null,
mem_post varchar2(20)constraint member_mem_post_nn not null,
mem_addr varchar2(200)constraint member_mem_addr_nn not null,
mem_deaddr varchar2(200)constraint member_mem_deaddr_nn not null,
mem_mileage number(10),
mem_date date,
mem_shopnum number(10),
mem_email varchar2(50),
mem_id varchar2(10),
mem_pwd  varchar2(20),

constraint member_memb_shopnum_fk foreign key(mem_shopnum)
references shop(shop_num) on delete cascade
);

-----------------------------------------------------------------
create table board(
bo_num number(10) constraint board_bo_num_pk primary key,
bo_sub varchar2(50) constraint board_bo_sub_nn not null,
bo_writer varchar(20) constraint board_bo_writer_nn not null,
bo_cont clob constraint board_bo_cont_nn not null,
bo_date date,
bo_img varchar2(50),
bo_hit number(10),
bo_bonnum number(10),
constraint board_bo_bonnum_fk foreign key(bo_bonnum)
references bonsa(bon_num) on delete cascade
);
---------------------------------------------------------------
create table comm(
comm_num number(10) constraint comm_comm_num_pk primary key,
comm_bonum number(10),
comm_writer varchar2(20) constraint comm_comm_writer_nn not null,
comm_cont varchar2(100) constraint comm_comm_cont_nn not null,
comm_date date,
constraint comm_comm_bonum_fk foreign key (comm_bonum)
references board(bo_num) on delete cascade
);
-------------------------------------------------------------
create table chat(
chat_num number(10) constraint chat_chat_num_pk primary key,
chat_id varchar2(20) constraint chat_chat_id_nn not null,
chat_cont varchar2(200),
chat_ip varchar(20),
chat_date date
);
------------------------------------
create table loginout(
log_num number(10) constraint loginout_log_num_pk primary key,
log_in date,
log_out date,
log_bonnum number(10),
constraint loginout_log_bonnum_fk foreign key (log_bonnum)
references bonsa(bon_num) on delete cascade
);
---------------------------------------

create table product(
pro_num number(10)constraint product_pro_num_pk primary key,
pro_name varchar2(50) constraint product_pro_name_nn not null,
pro_code varchar2(50) constraint product_pro_code_nn not null,
pro_barcode varchar2(50) constraint product_pro_barcode_nn not null,
pro_img varchar2(50) constraint product_pro_img_nn not null,
pro_date date,
pro_price number(30),
pro_salerate number(30),
constraint product_pro_code_uq unique (pro_code)
);
---------------------5/28----------------------------
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
sell_size number(5),
constraint sell_sell_pronum_fk foreign key(sell_pronum)
references product(pro_code) on delete cascade,
constraint sell_sell_shopnum_fk foreign key(sell_shopnum)
references shop(shop_num) on delete cascade,
constraint sell_sell_memnum_fk foreign key(sell_memnum)
references member(mem_num) on delete cascade);

------------------------------------------------------
create table hotkey(
key_num number(10) constraint hotkey_key_num_pk primary key,
key_name varchar2(30),
key_hotkey number(10),
key_email varchar2(30),
key_crnum number(20) constraint hotkey_key_crnum_uq UNIQUE,
key_date date,
hotkey_status varchar2(20)
);

-------------5/28����---------------------------------------

create table stock(
sto_num number(10) constraint stock_sto_num_pk primary key,
sto_pronum varchar2(50),
sto_amount number(10),
sto_shopnum number(10),
sto_size number(5),
constraint stock_sto_pronum_fk foreign key(sto_pronum)
references product(pro_code) on delete cascade,
constraint stock_sto_shopnum_fk foreign key(sto_shopnum)
references shop(shop_num) on delete cascade
);

commit;

----------------------------------------------------------
create table discount(
dis_num number(10) constraint discount_dis_num_pk primary key,
dis_salerate float(10),
dis_pronum number(10),
constraint discount_dis_pronum_fk foreign key (dis_pronum)
references product(pro_num) on delete cascade
);

create table staff(
staff_num number constraint staff_staff_num_pk primary key,
staff_name varchar2(20),
staff_position number(10),
staff_tel varchar2(30),
staff_shopnum number(10),
staff_id varchar2(30) constraint staff_staff_id_uq unique,
staff_pwd varchar2(30),
constraint staff_staff_shopnum_fk foreign key (staff_shopnum)
REFERENCES shop(shop_num) on delete cascade
);
create table stockreq(
req_num number constraint stockreq_req_num_pk primary key,
shop_num number(10),
pro_code varchar2(10),
pro_size number(10),
pro_amount number(10),
req_status varchar2(20),
req_date date,
constraint stockreq_pro_code_fk foreign key(pro_code) references product(pro_code) on delete cascade,
constraint stockreq_shop_num_fk foreign key(shop_num) references shop(shop_num) on delete cascade
);
create table croom (num number(10) constraint cromm_num_pk primary key,u_id varchar2(50),chat varchar2(400),cdate date,reip varchar2(100));


---------------7/9 calendar table--------------------------
create table calendar(
calen_num number(10) constraint calendar_calen_pk primary key,
calen_start varchar2(30),
calen_end varchar2(30),
calen_content varchar2(200),
calen_color varchar2(50),
calen_procode varchar2(50),
calen_date date);



--bonsa insert �̰� �ϳ���
insert into bonsa values(
1,'�ڴ븮',
'admin','1234','�븮',
'010-5017-3854',sysdate);

--shop insert �ִ�  test ���� �÷����鼭 �־��� 004 ���� �κе� ���� �ϳ��� �����ϸ鼭 �־���
insert into shop values(
0,'����â��'
,'031-234-1231','â������',0,0,sysdate,
'test@naver.com','���� ����â��',
'Dojun.PNG',000,1,'test0','1234'
);

insert into shop values(
1,'�Ǳ���'
,'031-234-1231','��� ������ �д籸 ������ 19-2',0,0,sysdate,
'test@naver.com','������',
'face_hyunmin.JPG',004,1,'test','1234'
);


insert into shop values(
2,'������'
,'031-264-1236','��� ���ν� ������ ��õ�� 167-3',0,0,sysdate,
'test@naver.com','����ȣ',
'face_jinho.JPG',005,1,'test1','1234'
);


insert into shop values(
3,'������'
,'031-134-1631','��� ������ �д籸 ������ 308-5',0,0,sysdate,
'test@naver.com','������',
'face_jinsuk.JPG',006,1,'test2','1234'
);


insert into shop values(
4,'�λ���'
,'054-214-1291','�λ� ������ ���ϵ� 6-2',0,0,sysdate,
'test@naver.com','����ȣ',
'face_juho.JPG',007,1,'test3','1234'
);


insert into shop values(
5,'������'
,'063-214-1981','���� ���ֽ� ������ ������2�� 695-4',0,0,sysdate,
'test@naver.com','������',
'face_kwangmin.JPG',008,1,'test4','1234'
);


insert into shop values(
6,'��û��'
,'043-134-3231','��� ���걺 ������ ������ 45-4',0,0,sysdate,
'test@naver.com','�ֹν�',
'face_munsik.JPG',009,1,'test5','1234'
);


insert into shop values(
7,'������'
,'033-834-1111','���� ������ ���� 1817-1',0,0,sysdate,
'test@naver.com','�ǿ���',
'face_ohyun.JPG',010,1,'test6','1234'
);


insert into shop values(
8,'������'
,'02-284-1331','���� ���ʱ� ��� 1-645',0,0,sysdate,
'test@naver.com','�μ���',
'face_sunghyun.JPG',011,1,'test7','1234'
);


insert into shop values(
9,'������'
,'02-678-1341','���� ���ʱ� ���絿 326-7',0,0,sysdate,
'test@naver.com','������',
'face_sungmin.JPG',012,1,'test8','1234'
);


insert into shop values(
10,'������'
,'02-2124-1231','���� ������ ���ﵿ 837-12',0,0,sysdate,
'test@naver.com','������',
'face_yoonsu.JPG',013,1,'test9','1234'
);



insert into shop values(
11,'�ѳ���'
,'02-234-1841','���� ��걸 �ѳ��� 1-44',0,0,sysdate,
'test@naver.com','����',
'face_hani.jpg',014,1,'test10','1234'
);


insert into shop values(
12,'������'
,'02-234-3451','���� ������ ������ 168-1',0,0,sysdate,
'test@naver.com','������',
'face_hyeri.jpg',015,1,'test11','1234'
);


insert into shop values(
13,'�����'
,'02-234-1281','���� �߱� �Ŵ絿 369-2',0,0,sysdate,
'test@naver.com','������',
'face_hyuna.jpg',016,1,'test12','1234'
);



insert into shop values(
14,'�սʸ���'
,'02-2124-1531','���� ������ ������ 22-1',0,0,sysdate,
'test@naver.com','������',
'face_iyou.jpg',017,1,'test13','1234'
);


insert into shop values(
15,'��������'
,'031-234-1131','��� �����ν� ���ɵ� 71',0,0,sysdate,
'test@naver.com','��ξ�',
'face_mina.jpg',018,1,'test14','1234'
);


insert into shop values(
16,'��������'
,'031-224-1221','��� �����ֽ� ��� 617-64',0,0,sysdate,
'test@naver.com','������',
'face_sica.jpg',019,1,'test15','1234'
);



insert into shop values(
17,'������'
,'031-234-1341','��� ���ν� ������ ������ 23-2',0,0,sysdate,
'test@naver.com','�����',
'face_sugi.jpg',020,1,'test16','1234'
);


insert into shop values(
18,'������'
,'031-2124-6231','��� ������ �д籸 ���̵� 197-1',0,0,sysdate,
'test@naver.com','�̼���',
'face_sunny.jpg',021,1,'test17','1234'
);


insert into shop values(
19,'�����'
,'02-123-1255','���� ���ı� ��ǵ� 8',0,0,sysdate,
'test@naver.com','���¿�',
'face_taeyeon.jpg',022,1,'test18','1234'
);


insert into shop values(
20,'�Ǵ���'
,'02-237-7831','���� ������ ȭ�絿 1',0,0,sysdate,
'test@naver.com','Ȳ�̿�',
'face_tiffany.jpg',023,1,'test19','1234'
);


-- member insert ��
insert into member values(member_seq.nextval,'������','010-1234-1234','746-2467','������ �ϱ�','�ϱ� ������',0,sysdate,1,'jihyun@naver.com','mem1','1234');
insert into member values(member_seq.nextval,'������','010-7367-2745','474-1234','����� ����','���� ����',0,sysdate,1,'dgsf@gmail.com','mem2','1234');
insert into member values(member_seq.nextval,'�賲��','010-5478-5463','346-1234','�泲�� ����','���� ��굿',0,sysdate,1,'jery@naver.com','mem3','1234');
insert into member values(member_seq.nextval,'�̵���','010-3879-4684','347-3456','��Ͻ� ���걸','���걸 �ξϵ�',0,sysdate,1,'weyh@hanmail.net','mem4','1234');
insert into member values(member_seq.nextval,'������','010-8764-4456','234-1234','�泲�� ������','������ �ֿ���',0,sysdate,1,'fhytr09@naver.com','mem5','1234');
insert into member values(member_seq.nextval,'Ȳ����','010-4548-7564','064-5463','��Ͻ� ���ϱ�','���ϱ� ����',0,sysdate,1,'hwhy89@gmail.com','mem6','1234');
insert into member values(member_seq.nextval,'����','010-7687-1235','457-2346','������ ���ʱ�','���ʱ� �����',0,sysdate,1,'hjeh1@naver.com','mem7','1234');
insert into member values(member_seq.nextval,'������','010-7867-5479','786-1234','���ʽ� ���ı�','���ı� �꺻��',0,sysdate,1,'fget@hanmail.net','mem8','1234');
insert into member values(member_seq.nextval,'������','010-3468-3458','755-3466','�ݻ�� �߶���','�߶��� û�㵿',0,sysdate,1,'dfge@gmail.com','mem9','1234');
insert into member values(member_seq.nextval,'������','010-5794-3488','245-1234','������ ���Ǳ�','���Ǳ� ������',0,sysdate,1,'rtyhd@naver.com','mem10','1234');
insert into member values(member_seq.nextval,'������','010-5468-3475','135-3252','����� ��������','�������� ������',0,sysdate,1,'hgdt@naver.com','mem11','1234');
insert into member values(member_seq.nextval,'�ڼ���','010-5795-5685','735-2342','���Ͻ� ����','���� ���̵�',0,sysdate,1,'sujin@hanmail.net','mem12','1234');
insert into member values(member_seq.nextval,'������','010-4345-2467','245-1234','������ ������','������ ���ʵ�',0,sysdate,1,'ji10@naver.com','mem13','1234');
insert into member values(member_seq.nextval,'����ȣ','010-8744-9054','452-2356','��õ�� ������','������ ������',0,sysdate,1,'inho@gmail.com','mem14','1234');
insert into member values(member_seq.nextval,'������','010-4684-5467','345-2352','������ ��ȭ��','��ȭ�� ��鵿',0,sysdate,1,'jiwon@naver.com','mem15','1234');
insert into member values(member_seq.nextval,'�ּ���','010-1234-3578','764-1234','���ֽ� �Ｚ��','�Ｚ�� �����',0,sysdate,1,'sususu@hanmail.net','mem16','1234');
insert into member values(member_seq.nextval,'���ҹ�','010-2466-3464','345-1356','���Ͻ� ������','������ ������',0,sysdate,1,'somin@naver.com','mem17','1234');
insert into member values(member_seq.nextval,'ȫ����','010-5773-7843','065-8845','������ �߱�','�߱� ���嵿',0,sysdate,1,'jin09@gmail.com','mem18','1234');
insert into member values(member_seq.nextval,'ȫ�ݺ�','010-5745-6708','076-0986','����� ������','������ ���̵�',0,sysdate,1,'honghong@naver.com','mem19','1234');
insert into member values(member_seq.nextval,'������','010-5464-8747','235-1234','�Ⱦ�� ���ϱ�','���ϱ� �Ǳ���',0,sysdate,1,'naya@hanmail.net','mem20','1234');

----------------- �����Ϳ� ��� 21-25
insert into member values(member_seq.nextval,'������','010-1234-1234','746-2467','������ �ϱ�','�ϱ� ������',0,sysdate,1,'r213333@naver.com','mem21','1234');
insert into member values(member_seq.nextval,'��ȫ��','010-7367-2745','474-1234','����� ����','���� ����',0,sysdate,1,'lifeveril@naver.com','mem22','1234');
insert into member values(member_seq.nextval,'�ѱ�ȣ','010-5478-5463','346-1234','�泲�� ����','���� ��굿',0,sysdate,1,'ama949@naver.com','mem23','1234');
insert into member values(member_seq.nextval,'������','010-3879-4684','347-3456','��Ͻ� ���걸','���걸 �ξϵ�',0,sysdate,1,'lifeveril@naver.com','mem24','1234');
insert into member values(member_seq.nextval,'�ڰ��','010-4548-7564','064-5463','���� ������','�׳� ����',0,sysdate,1,'phoenixcrash@naver.com','mem25','1234');


-- insert product
-- ������
insert into product values(product_seq.nextval,'���� ��� ��Ʈ','1531115001','ba_1531115001.png','img_1531115001.jpg',sysdate,25000,0);
insert into product values(product_seq.nextval,'���� ��� ���� ����','1541115002','ba_1541115002.png','img_1541115002.jpg',sysdate,50000,0);
insert into product values(product_seq.nextval,'���� ��Ʈ������ ���� ��Ʈ','1511111003','ba_1511111003.png','img_1511111003.jpg',sysdate,75000,0);
insert into product values(product_seq.nextval,'���� ��� ����','1522115004','ba_1522115004.png','img_1522115004.jpg',sysdate,55000,0);
insert into product values(product_seq.nextval,'���� ī���ö��� ����','1511215005','ba_1511215005.png','img_1511215005.jpg',sysdate,35000,0);


-- ������
insert into product values(product_seq.nextval,'���� ���� Ƽ����','1512119001','ba_1512119001.png','img_1512119001.jpg',sysdate,25000,0);
insert into product values(product_seq.nextval,'���� ���� ����','1522219002','ba_1522219002.png','img_1522219002.jpg',sysdate,30000,0);
insert into product values(product_seq.nextval,'���� �� ������','1532115003','ba_1532115003.png','img_1532115003.jpg',sysdate,65000,0);
insert into product values(product_seq.nextval,'���� üũ ���ǽ�','1532110004','ba_1532110004.png','img_1532110004.jpg',sysdate,45000,0);
insert into product values(product_seq.nextval,'���� ȭ��Ʈ ����','1542210005','ba_1542210005.png','img_1542210005.jpg',sysdate,37000,0);



-- �Ƶ���
insert into product values(product_seq.nextval,'�Ƶ� ��� Ƽ����','1523103001','ba_1523103001.png','img_1523103001.jpg',sysdate,15000,0);
insert into product values(product_seq.nextval,'�Ƶ� ��Ʈ ���ǽ�','1513104002','ba_1513104002.png','img_1513104002.jpg',sysdate,22000,0);
insert into product values(product_seq.nextval,'�Ƶ� ������ ��ũ ���ǽ�','1523101003','ba_1523101003.png','img_1523101003.jpg',sysdate,17000,0);
insert into product values(product_seq.nextval,'�Ƶ� ���� ���� ����','1543211004','ba_1543211004.png','img_1543211004.jpg',sysdate,9000,0);
insert into product values(product_seq.nextval,'�Ƶ� ���μ���','1533104005','ba_1533104005.png','img_1533104005.jpg',sysdate,12000,0);





--�̰��� staff table�Դϴ�.--

insert into staff values(staff_seq.nextval,'������',1,'010-121-1234',1,'test0',1234);
insert into staff values(staff_seq.nextval,'������',2,'123-1221-3000',1,'test1',1234);
insert into staff values(staff_seq.nextval,'������',2,'123-123-1111',1,'test2',1234);

insert into staff values(staff_seq.nextval,'������',1,'123-124-2222',2,'test3',1234);
insert into staff values(staff_seq.nextval,'������',2,'123-125-3333',2,'test4',1234);
insert into staff values(staff_seq.nextval,'������',2,'123-126-5555',2,'test5',1234);

insert into staff values(staff_seq.nextval,'������',1,'123-127-6666',3,'test6',1234);
insert into staff values(staff_seq.nextval,'������',2,'123-128-7777',3,'test7',1234);
insert into staff values(staff_seq.nextval,'������',2,'123-129-8888',3,'test8',1234);

insert into staff values(staff_seq.nextval,'������',1,'123-113-1111',4,'test9',1234);
insert into staff values(staff_seq.nextval,'�Ӽ���',2,'123-123-9999',4,'test10',1234);
insert into staff values(staff_seq.nextval,'������',2,'123-123-2222',4,'test11',1234);

insert into staff values(staff_seq.nextval,'�ں���',1,'123-123-3333',5,'test12',1234);
insert into staff values(staff_seq.nextval,'������',2,'123-123-5555',5,'test13',1234);
insert into staff values(staff_seq.nextval,'��ö��',2,'123-123-6666',5,'test14',1234);

insert into staff values(staff_seq.nextval,'���濬',1,'123-123-7777',6,'test15',1234);
insert into staff values(staff_seq.nextval,'�ڰ���',2,'123-123-8888',6,'test16',1234);
insert into staff values(staff_seq.nextval,'���濬',2,'123-123-9999',6,'test17',1234);

insert into staff values(staff_seq.nextval,'��ȫ��',1,'123-123-2222',7,'test18',1234);
insert into staff values(staff_seq.nextval,'�ѱ�ȣ',2,'123-123-1234',7,'test19',1234);
insert into staff values(staff_seq.nextval,'������',2,'123-123-5678',7,'test20',1234);


insert into staff values(staff_seq.nextval,'���ȯ',1,'123-123-1111',8,'test21',1234);
insert into staff values(staff_seq.nextval,'�迵��',2,'123-123-2222',8,'test22',1234);
insert into staff values(staff_seq.nextval,'���϶�',2,'123-123-3333',8,'test23',1234);


insert into staff values(staff_seq.nextval,'�輺ȣ',1,'123-123-6666',9,'test24',1234);
insert into staff values(staff_seq.nextval,'ȫ��ǥ',2,'123-123-7777',9,'test25',1234);
insert into staff values(staff_seq.nextval,'�����',2,'123-123-5555',9,'test26',1234);


insert into staff values(staff_seq.nextval,'���ֻ�',1,'123-123-3232',10,'test27',1234);
insert into staff values(staff_seq.nextval,'��ȣ��',2,'123-123-3333',10,'test28',1234);
insert into staff values(staff_seq.nextval,'�̼���',2,'123-123-7777',10,'test29',1234);


insert into staff values(staff_seq.nextval,'������',1,'123-123-9999',11,'test30',1234);
insert into staff values(staff_seq.nextval,'�迵��',2,'123-123-0000',11,'test31',1234);
insert into staff values(staff_seq.nextval,'������',2,'123-123-2222',11,'test32',1234);


insert into staff values(staff_seq.nextval,'�̰漮',1,'123-123-3333',12,'test33',1234);
insert into staff values(staff_seq.nextval,'�賲��',2,'123-123-1111',12,'test34',1234);
insert into staff values(staff_seq.nextval,'���ο�',2,'123-123-2222',12,'test35',1234);


insert into staff values(staff_seq.nextval,'������',1,'123-123-3333',13,'test36',1234);
insert into staff values(staff_seq.nextval,'������',2,'123-123-1111',13,'test37',1234);
insert into staff values(staff_seq.nextval,'������',2,'123-123-2222',13,'test38',1234);


insert into staff values(staff_seq.nextval,'����ȯ',1,'123-123-3333',14,'test39',1234);
insert into staff values(staff_seq.nextval,'�ֿ���',2,'123-123-4444',14,'test40',1234);
insert into staff values(staff_seq.nextval,'������',2,'123-123-5555',14,'test41',1234);


insert into staff values(staff_seq.nextval,'�����',1,'123-123-6666',15,'test42',1234);
insert into staff values(staff_seq.nextval,'������',2,'123-123-7777',15,'test43',1234);
insert into staff values(staff_seq.nextval,'����ȣ',2,'123-123-8888',15,'test44',1234);







-- stock (5/28) ����

-- �븮�� 1ȣ, ������ 1ȣ
insert into stock values(stock_seq.nextval,'1531115001',50,1,95);
insert into stock values(stock_seq.nextval,'1531115001',20,1,100);
insert into stock values(stock_seq.nextval,'1531115001',25,1,105);

-- �븮�� 2ȣ
insert into stock values(stock_seq.nextval,'1531115001',63,2,95);
insert into stock values(stock_seq.nextval,'1531115001',14,2,100);
insert into stock values(stock_seq.nextval,'1531115001',58,2,105);

-- �븮�� 3ȣ
insert into stock values(stock_seq.nextval,'1531115001',43,3,95);
insert into stock values(stock_seq.nextval,'1531115001',32,3,100);
insert into stock values(stock_seq.nextval,'1531115001',85,3,105);


-- �븮�� 1ȣ, ������ 1ȣ
insert into stock values(stock_seq.nextval,'1512119001',32,1,55);
insert into stock values(stock_seq.nextval,'1512119001',54,1,66);

-- �븮�� 2ȣ
insert into stock values(stock_seq.nextval,'1512119001',33,2,55);
insert into stock values(stock_seq.nextval,'1512119001',54,2,66);

-- �븮�� 3ȣ
insert into stock values(stock_seq.nextval,'1512119001',43,3,55);
insert into stock values(stock_seq.nextval,'1512119001',22,3,66);


-- �븮�� 1ȣ, �Ʊ�� 1ȣ
insert into stock values(stock_seq.nextval,'1523103001',37,1,2);
insert into stock values(stock_seq.nextval,'1523103001',34,1,3);
insert into stock values(stock_seq.nextval,'1523103001',62,1,4);

-- �븮�� 2ȣ
insert into stock values(stock_seq.nextval,'1523103001',17,2,2);
insert into stock values(stock_seq.nextval,'1523103001',24,2,3);
insert into stock values(stock_seq.nextval,'1523103001',82,2,4);

-- �븮�� 3ȣ
insert into stock values(stock_seq.nextval,'1523103001',27,3,2);
insert into stock values(stock_seq.nextval,'1523103001',54,3,3);
insert into stock values(stock_seq.nextval,'1523103001',35,3,4);





-- �븮�� 1ȣ, ������ 2ȣ
insert into stock values(stock_seq.nextval,'1541115002',50,1,95);
insert into stock values(stock_seq.nextval,'1541115002',20,1,100);
insert into stock values(stock_seq.nextval,'1541115002',25,1,105);

-- �븮�� 2ȣ
insert into stock values(stock_seq.nextval,'1541115002',63,2,95);
insert into stock values(stock_seq.nextval,'1541115002',14,2,100);
insert into stock values(stock_seq.nextval,'1541115002',58,2,105);

-- �븮�� 3ȣ
insert into stock values(stock_seq.nextval,'1541115002',43,3,95);
insert into stock values(stock_seq.nextval,'1541115002',32,3,100);
insert into stock values(stock_seq.nextval,'1541115002',85,3,105);


-- �븮�� 1ȣ, ������ 2ȣ
insert into stock values(stock_seq.nextval,'1541115002',32,1,55);
insert into stock values(stock_seq.nextval,'1541115002',54,1,66);

-- �븮�� 2ȣ
insert into stock values(stock_seq.nextval,'1541115002',33,2,55);
insert into stock values(stock_seq.nextval,'1541115002',54,2,66);

-- �븮�� 3ȣ
insert into stock values(stock_seq.nextval,'1541115002',43,3,55);
insert into stock values(stock_seq.nextval,'1541115002',22,3,66);


-- �븮�� 1ȣ, �Ʊ�� 2ȣ
insert into stock values(stock_seq.nextval,'1513104002',37,1,2);
insert into stock values(stock_seq.nextval,'1513104002',34,1,3);
insert into stock values(stock_seq.nextval,'1513104002',62,1,4);

-- �븮�� 2ȣ
insert into stock values(stock_seq.nextval,'1513104002',17,2,2);
insert into stock values(stock_seq.nextval,'1513104002',24,2,3);
insert into stock values(stock_seq.nextval,'1513104002',82,2,4);

-- �븮�� 3ȣ
insert into stock values(stock_seq.nextval,'1513104002',27,3,2);
insert into stock values(stock_seq.nextval,'1513104002',54,3,3);
insert into stock values(stock_seq.nextval,'1513104002',35,3,4);





-- �븮�� 1ȣ, ������ 3ȣ
insert into stock values(stock_seq.nextval,'1511111003',50,1,95);
insert into stock values(stock_seq.nextval,'1511111003',20,1,100);
insert into stock values(stock_seq.nextval,'1511111003',25,1,105);

-- �븮�� 2ȣ
insert into stock values(stock_seq.nextval,'1511111003',63,2,95);
insert into stock values(stock_seq.nextval,'1511111003',14,2,100);
insert into stock values(stock_seq.nextval,'1511111003',58,2,105);

-- �븮�� 3ȣ
insert into stock values(stock_seq.nextval,'1511111003',43,3,95);
insert into stock values(stock_seq.nextval,'1511111003',32,3,100);
insert into stock values(stock_seq.nextval,'1511111003',85,3,105);


-- �븮�� 1ȣ, ������ 3ȣ
insert into stock values(stock_seq.nextval,'1532115003',32,1,55);
insert into stock values(stock_seq.nextval,'1532115003',54,1,66);

-- �븮�� 2ȣ
insert into stock values(stock_seq.nextval,'1532115003',33,2,55);
insert into stock values(stock_seq.nextval,'1532115003',54,2,66);

-- �븮�� 3ȣ
insert into stock values(stock_seq.nextval,'1532115003',43,3,55);
insert into stock values(stock_seq.nextval,'1532115003',22,3,66);


-- �븮�� 1ȣ, �Ʊ�� 3ȣ
insert into stock values(stock_seq.nextval,'1523101003',37,1,2);
insert into stock values(stock_seq.nextval,'1523101003',34,1,3);
insert into stock values(stock_seq.nextval,'1523101003',62,1,4);

-- �븮�� 2ȣ
insert into stock values(stock_seq.nextval,'1523101003',17,2,2);
insert into stock values(stock_seq.nextval,'1523101003',24,2,3);
insert into stock values(stock_seq.nextval,'1523101003',82,2,4);

-- �븮�� 3ȣ
insert into stock values(stock_seq.nextval,'1523101003',27,3,2);
insert into stock values(stock_seq.nextval,'1523101003',54,3,3);
insert into stock values(stock_seq.nextval,'1523101003',35,3,4);








-----------------------------------------------------------------------------------------���� 1 ����
-----01��

insert into sell values(sell_seq.nextval, '1523103001', 15000, 1343, 1, 2, '2015-01-01', 6, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 1343, 1, 2, '2015-01-01', 6, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 15000, 1343, 1, 2, '2015-01-01', 6, 1 ,6);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 1343, 1, 10, '2015-01-01', 6, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 1343, 1, 10, '2015-01-01', 6, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 1224, 1, 16, '2015-01-02', 7, 1 ,27);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 8433, 1, 2, '2015-01-02', 13, 1 ,7 );
insert into sell values(sell_seq.nextval, '1543211004', 9000, 3463, 1, 16, '2015-01-02', 14, 1 ,8);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 8954, 1, 16, '2015-01-03', 8, 1 ,85);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 1000, 1, 3, '2015-01-03', 1, 1,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 1000, 1, 3, '2015-01-03', 1, 1,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 1230, 1, 4, '2015-01-03', 2, 1,100);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 1230, 1, 4, '2015-01-03', 2, 1,100);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 6825, 1, 5, '2015-01-03', 3, 1,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 6825, 1, 5, '2015-01-03', 3, 1,32);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 6433, 1, 1, '2015-01-04', 9, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 6433, 1, 1, '2015-01-04', 9, 1 ,75);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 6433, 1, 1, '2015-01-04', 9, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 1224, 1, 1, '2015-01-04', 7, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 8954, 1, 10, '2015-01-04', 8, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 6433, 1, 1, '2015-01-04', 9, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 8267, 1, 10, '2015-01-05', 10, 1 ,25);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 1230, 1, 4, '2015-01-05', 2, 1,100);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 6825, 1, 5, '2015-01-05', 3, 1,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 3567, 1, 5, '2015-01-05', 4, 1,32);

insert into sell values(sell_seq.nextval, '1523103001', 15000, 3583, 1, 11, '2015-01-06', 11, 1 ,8 );
insert into sell values(sell_seq.nextval, '1523101003', 17000, 3583, 1, 11, '2015-01-06', 11, 1 ,8 );
insert into sell values(sell_seq.nextval, '1513104002', 22000, 3583, 1, 11, '2015-01-06', 11, 1 ,8 );
insert into sell values(sell_seq.nextval, '1513104002', 22000, 5793, 1, 12, '2015-01-07', 12, 1 ,7 );
insert into sell values(sell_seq.nextval, '1523101003', 17000, 5793, 1, 12, '2015-01-07', 12, 1 ,7 );
insert into sell values(sell_seq.nextval, '1523103001', 15000, 5793, 1, 12, '2015-01-07', 12, 1 ,7 );
insert into sell values(sell_seq.nextval, '1523101003', 17000, 8433, 1, 13, '2015-01-08', 13, 1 ,8 );
insert into sell values(sell_seq.nextval, '1543211004', 9000, 3463, 1, 14, '2015-01-09', 14, 1 ,6 );
insert into sell values(sell_seq.nextval, '1533104005', 12000, 3463, 1, 15, '2015-01-10', 15, 1 ,8 );

insert into sell values(sell_seq.nextval, '1531115001', 25000, 1000, 1, 6, '2015-01-11', 1, 1,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 1000, 1, 6, '2015-01-11', 1, 1,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 1230, 1, 7, '2015-01-12', 2, 1,100);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 1230, 1, 7, '2015-01-12', 2, 1,100);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 6825, 1, 9, '2015-01-13', 3, 1,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 3567, 1, 7, '2015-01-14', 4, 1,30);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 3663, 1, 9, '2015-01-15', 5, 1,32);

insert into sell values(sell_seq.nextval, '1512119001', 25000, 1343, 1, 8, '2015-01-16', 6, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 1224, 1, 8, '2015-01-17', 7, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 8954, 1, 10, '2015-01-18', 8, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 6433, 1, 8, '2015-01-19', 9, 1 ,80);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 8267, 1, 13, '2015-01-20', 10, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 8267, 1, 13, '2015-01-20', 10, 1 ,95);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 1343, 1, 12, '2015-01-16', 6, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 1224, 1, 15, '2015-01-17', 7, 1 ,27);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 1224, 1, 15, '2015-01-17', 7, 1 ,80);

insert into sell values(sell_seq.nextval, '1531115001', 25000, 1000, 1, 18, '2015-01-21', 1, 1,95);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 1000, 1, 18, '2015-01-21', 1, 1,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 1230, 1, 14, '2015-01-22', 2, 1,100);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 3567, 1, 14, '2015-01-24', 4, 1,30);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 6825, 1, 20, '2015-01-23', 3, 1,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 3663, 1, 20, '2015-01-25', 5, 1,32);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 3567, 1, 18, '2015-01-24', 4, 1,30);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 3663, 1, 14, '2015-01-25', 5, 1,30);

insert into sell values(sell_seq.nextval, '1512119001', 25000, 1343, 1, 16, '2015-01-26', 6, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 1224, 1, 15, '2015-01-27', 7, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 8954, 1, 16, '2015-01-28', 8, 1 ,80);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 6433, 1, 16, '2015-01-29', 9, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 8267, 1, 16, '2015-01-30', 10, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 8267, 1, 17, '2015-01-31', 10, 1 ,30);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 6433, 1, 17, '2015-01-31', 9, 1 ,85);

---------01�� ��
---------02�� ����
insert into sell values(sell_seq.nextval, '1523101003', 17000, 1343, 1, 2, '2015-02-01', 6, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 1343, 1, 2, '2015-02-02', 6, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 15000, 1343, 1, 2, '2015-02-05', 6, 1 ,6);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 1343, 1, 10, '2015-02-05', 6, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 1343, 1, 10, '2015-02-08', 6, 1 ,85);

insert into sell values(sell_seq.nextval, '1522219002', 30000, 1224, 1, 16, '2015-02-09', 7, 1 ,27);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 8433, 1, 2, '2015-02-11', 13, 1 ,7 );
insert into sell values(sell_seq.nextval, '1532115003', 65000, 8954, 1, 16, '2015-02-11', 8, 1 ,80);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 6433, 1, 16, '2015-02-12', 9, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 8267, 1, 16, '2015-02-12', 10, 1 ,25);

insert into sell values(sell_seq.nextval, '1543211004', 9000, 3463, 1, 16, '2015-02-13', 14, 1 ,8);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 8954, 1, 16, '2015-02-13', 8, 1 ,85);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 1000, 1, 3, '2015-02-15', 1, 1,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 1000, 1, 3, '2015-02-16', 1, 1,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 1230, 1, 4, '2015-02-16', 2, 1,100);

insert into sell values(sell_seq.nextval, '1541115002', 17000, 1230, 1, 4, '2015-02-18', 2, 1,100);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 6825, 1, 5, '2015-02-17', 3, 1,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 6825, 1, 5, '2015-02-19', 3, 1,32);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 6433, 1, 1, '2015-02-19', 9, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 8267, 1, 17, '2015-02-20', 10, 1 ,30);

insert into sell values(sell_seq.nextval, '1532115003', 65000, 6433, 1, 1, '2015-02-20', 9, 1 ,75);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 6433, 1, 1, '2015-02-21', 9, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 1224, 1, 1, '2015-02-21', 7, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 8954, 1, 10, '2015-02-22', 8, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 6433, 1, 1, '2015-02-22', 9, 1 ,80);

insert into sell values(sell_seq.nextval, '1542210005', 37000, 8267, 1, 10, '2015-02-24', 10, 1 ,25);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 1230, 1, 4, '2015-02-24', 2, 1,100);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 6825, 1, 5, '2015-02-25', 3, 1,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 3567, 1, 5, '2015-02-27', 4, 1,32);


-------02�� �� 
-------03�� ����
insert into sell values(sell_seq.nextval, '1523103001', 15000, 3583, 1, 11, '2015-03-03', 11, 1 ,8 );
insert into sell values(sell_seq.nextval, '1523101003', 17000, 3583, 1, 11, '2015-03-05', 11, 1 ,8 );
insert into sell values(sell_seq.nextval, '1513104002', 22000, 3583, 1, 11, '2015-03-06', 11, 1 ,8 );
insert into sell values(sell_seq.nextval, '1513104002', 22000, 5793, 1, 12, '2015-03-07', 12, 1 ,7 );
insert into sell values(sell_seq.nextval, '1523101003', 17000, 5793, 1, 12, '2015-03-07', 12, 1 ,7 );
insert into sell values(sell_seq.nextval, '1523103001', 15000, 5793, 1, 12, '2015-03-08', 12, 1 ,7 );
insert into sell values(sell_seq.nextval, '1523101003', 17000, 8433, 1, 13, '2015-03-08', 13, 1 ,8 );
insert into sell values(sell_seq.nextval, '1543211004', 9000, 3463, 1, 14, '2015-03-09', 14, 1 ,6 );
insert into sell values(sell_seq.nextval, '1533104005', 12000, 3463, 1, 15, '2015-03-10', 15, 1 ,8 );

insert into sell values(sell_seq.nextval, '1531115001', 25000, 1000, 1, 6, '2015-03-11', 1, 1,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 1000, 1, 6, '2015-03-11', 1, 1,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 1230, 1, 7, '2015-03-12', 2, 1,100);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 1230, 1, 7, '2015-03-12', 2, 1,100);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 6825, 1, 9, '2015-03-13', 3, 1,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 3567, 1, 7, '2015-03-14', 4, 1,30);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 3663, 1, 9, '2015-03-15', 5, 1,32);

insert into sell values(sell_seq.nextval, '1512119001', 25000, 1343, 1, 8, '2015-03-16', 6, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 1224, 1, 8, '2015-03-17', 7, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 8954, 1, 10, '2015-03-18', 8, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 6433, 1, 8, '2015-03-19', 9, 1 ,80);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 8267, 1, 13, '2015-03-19', 10, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 8267, 1, 13, '2015-03-19', 10, 1 ,95);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 1343, 1, 12, '2015-03-19', 6, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 1224, 1, 15, '2015-03-20', 7, 1 ,27);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 1224, 1, 15, '2015-03-20', 7, 1 ,80);

insert into sell values(sell_seq.nextval, '1531115001', 25000, 1000, 1, 18, '2015-01-21', 1, 1,95);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 1000, 1, 18, '2015-01-21', 1, 1,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 1230, 1, 14, '2015-01-22', 2, 1,100);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 3567, 1, 14, '2015-01-24', 4, 1,30);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 6825, 1, 20, '2015-01-23', 3, 1,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 3663, 1, 20, '2015-01-25', 5, 1,32);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 3567, 1, 18, '2015-01-24', 4, 1,30);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 3663, 1, 14, '2015-01-25', 5, 1,30);

insert into sell values(sell_seq.nextval, '1512119001', 25000, 1343, 1, 16, '2015-01-26', 6, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 1224, 1, 15, '2015-01-27', 7, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 8954, 1, 16, '2015-01-27', 8, 1 ,80);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 6433, 1, 16, '2015-01-28', 9, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 8267, 1, 16, '2015-01-28', 10, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 8267, 1, 17, '2015-01-29', 10, 1 ,30);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 6433, 1, 17, '2015-01-30', 9, 1 ,85);
--------3�� ��
--------4�� ����

insert into sell values(sell_seq.nextval, '1523103001', 15000, 1343, 1, 2, '2015-04-01', 6, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 1343, 1, 2, '2015-04-01', 6, 1 ,6);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 1224, 1, 16, '2015-04-02', 7, 1 ,27);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 8433, 1, 2, '2015-04-02', 13, 1 ,7 );
insert into sell values(sell_seq.nextval, '1543211004', 9000, 3463, 1, 16, '2015-04-02', 14, 1 ,8);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 6825, 1, 5, '2015-04-03', 3, 1,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 6825, 1, 5, '2015-04-03', 3, 1,32);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 6433, 1, 1, '2015-04-04', 9, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 6433, 1, 1, '2015-04-04', 9, 1 ,75);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 3567, 1, 5, '2015-04-05', 4, 1,32);
insert into sell values(sell_seq.nextval, '1543211004', 15000, 1343, 1, 2, '2015-04-06', 6, 1 ,6);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 1343, 1, 10, '2015-04-06', 6, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 1343, 1, 10, '2015-04-07', 6, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 8954, 1, 16, '2015-04-07', 8, 1 ,85);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 1000, 1, 3, '2015-04-08', 1, 1,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 1000, 1, 3, '2015-04-08', 1, 1,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 1230, 1, 4, '2015-04-08', 2, 1,100);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 1230, 1, 4, '2015-04-09', 2, 1,100);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 8954, 1, 10, '2015-04-11', 8, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 6433, 1, 1, '2015-04-12', 9, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 8267, 1, 10, '2015-04-13', 10, 1 ,25);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 1230, 1, 4, '2015-04-14', 2, 1,100);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 6433, 1, 1, '2015-04-14', 9, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 1224, 1, 1, '2015-04-14', 7, 1 ,25);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 6825, 1, 5, '2015-04-15', 3, 1,105);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 3583, 1, 11, '2015-04-16', 11, 1 ,8 );
insert into sell values(sell_seq.nextval, '1523101003', 17000, 3583, 1, 11, '2015-04-17', 11, 1 ,8 );
insert into sell values(sell_seq.nextval, '1513104002', 22000, 3583, 1, 11, '2015-04-17', 11, 1 ,8 );
insert into sell values(sell_seq.nextval, '1513104002', 22000, 5793, 1, 12, '2015-04-18', 12, 1 ,7 );
insert into sell values(sell_seq.nextval, '1523101003', 17000, 5793, 1, 12, '2015-04-19', 12, 1 ,7 );
insert into sell values(sell_seq.nextval, '1523103001', 15000, 5793, 1, 12, '2015-04-19', 12, 1 ,7 );
insert into sell values(sell_seq.nextval, '1523101003', 17000, 8433, 1, 13, '2015-04-20', 13, 1 ,8 );
insert into sell values(sell_seq.nextval, '1543211004', 9000, 3463, 1, 14, '2015-04-21', 14, 1 ,6 );
insert into sell values(sell_seq.nextval, '1533104005', 12000, 3463, 1, 15, '2015-04-22', 15, 1 ,8 );
insert into sell values(sell_seq.nextval, '1531115001', 25000, 1000, 1, 18, '2015-04-23', 1, 1,95);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 1000, 1, 18, '2015-04-23', 1, 1,28);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 1000, 1, 18, '2015-04-23', 1, 1,95);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 6825, 1, 20, '2015-04-24', 1, 1,105);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 1230, 1, 14, '2015-04-25', 2, 1,100);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 3567, 1, 14, '2015-04-25', 4, 1,30);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 6825, 1, 20, '2015-04-27', 3, 1,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 3663, 1, 20, '2015-04-28', 5, 1,32);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 3567, 1, 18, '2015-04-28', 4, 1,30);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 3663, 1, 14, '2015-04-28', 5, 1,30);

------- 4�� ��
------- 5�� ����
insert into sell values(sell_seq.nextval, '1531115001', 25000, 1000, 1, 6, '2015-05-01', 1, 1,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 1000, 1, 6, '2015-05-04', 1, 1,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 1230, 1, 7, '2015-05-08', 2, 1,100);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 1230, 1, 7, '2015-05-10', 2, 1,100);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 6825, 1, 9, '2015-05-13', 3, 1,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 3567, 1, 7, '2015-05-14', 4, 1,30);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 1224, 1, 8, '2015-05-17', 7, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 8954, 1, 10, '2015-05-18', 8, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 6433, 1, 8, '2015-05-19', 9, 1 ,80);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 8267, 1, 13, '2015-05-20', 10, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 8267, 1, 13, '2015-05-20', 10, 1 ,95);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 1343, 1, 12, '2015-05-16', 6, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 1224, 1, 15, '2015-05-17', 7, 1 ,27);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 1000, 1, 18, '2015-05-21', 1, 1,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 1230, 1, 14, '2015-05-22', 2, 1,100);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 3567, 1, 14, '2015-05-24', 4, 1,30);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 6825, 1, 20, '2015-05-25', 3, 1,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 3663, 1, 20, '2015-05-27', 5, 1,32);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 3567, 1, 18, '2015-05-28', 4, 1,30);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 3663, 1, 14, '2015-05-29', 5, 1,30);
---------5�� ��
---------6�� ����

insert into sell values(sell_seq.nextval, '1541115002', 17000, 6825, 1, 5, '2015-06-01', 3, 1,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 6825, 1, 5, '2015-06-01', 3, 1,32);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 6433, 1, 1, '2015-06-02', 9, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 6433, 1, 1, '2015-06-04', 9, 1 ,75);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 6433, 1, 1, '2015-06-05', 9, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 1224, 1, 1, '2015-06-05', 7, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 8954, 1, 10, '2015-06-06', 8, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 6433, 1, 1, '2015-06-06', 9, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 8267, 1, 10, '2015-06-06', 10, 1 ,25);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 1230, 1, 4, '2015-06-07', 2, 1,100);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 6825, 1, 5, '2015-06-07', 3, 1,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 3567, 1, 5, '2015-06-08', 4, 1,32);

insert into sell values(sell_seq.nextval, '1523103001', 15000, 3583, 1, 11, '2015-06-08', 11, 1 ,8 );
insert into sell values(sell_seq.nextval, '1523101003', 17000, 3583, 1, 11, '2015-06-09', 11, 1 ,8 );
insert into sell values(sell_seq.nextval, '1513104002', 22000, 3583, 1, 11, '2015-06-09', 11, 1 ,8 );
insert into sell values(sell_seq.nextval, '1513104002', 22000, 5793, 1, 12, '2015-06-09', 12, 1 ,7 );
insert into sell values(sell_seq.nextval, '1523101003', 17000, 5793, 1, 12, '2015-06-09', 12, 1 ,7 );
insert into sell values(sell_seq.nextval, '1523103001', 15000, 5793, 1, 12, '2015-06-10', 12, 1 ,7 );
insert into sell values(sell_seq.nextval, '1523101003', 17000, 8433, 1, 13, '2015-06-10', 13, 1 ,8 );
insert into sell values(sell_seq.nextval, '1543211004', 9000, 3463, 1, 14, '2015-06-11', 14, 1 ,6 );
insert into sell values(sell_seq.nextval, '1533104005', 12000, 3463, 1, 15, '2015-06-11', 15, 1 ,8 );

insert into sell values(sell_seq.nextval, '1531115001', 25000, 1000, 1, 6, '2015-06-11', 1, 1,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 1000, 1, 6, '2015-06-11', 1, 1,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 1230, 1, 7, '2015-06-12', 2, 1,100);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 1230, 1, 7, '2015-06-12', 2, 1,100);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 6825, 1, 9, '2015-06-13', 3, 1,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 3567, 1, 7, '2015-06-14', 4, 1,30);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 3663, 1, 9, '2015-06-15', 5, 1,32);

insert into sell values(sell_seq.nextval, '1512119001', 25000, 1343, 1, 8, '2015-06-16', 6, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 1224, 1, 8, '2015-06-16', 7, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 8954, 1, 10, '2015-06-17', 8, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 6433, 1, 8, '2015-06-17', 9, 1 ,80);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 8267, 1, 13, '2015-06-17', 10, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 8267, 1, 13, '2015-06-18', 10, 1 ,95);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 1343, 1, 12, '2015-06-18', 6, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 1224, 1, 15, '2015-06-19', 7, 1 ,27);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 1224, 1, 15, '2015-06-19', 7, 1 ,80);

insert into sell values(sell_seq.nextval, '1531115001', 25000, 1000, 1, 18, '2015-06-20', 1, 1,95);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 1000, 1, 18, '2015-06-22', 1, 1,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 1230, 1, 14, '2015-06-22', 2, 1,100);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 3567, 1, 14, '2015-06-23', 4, 1,30);
insert into sell values(sell_seq.nextval, '1541115002', 17000, 6825, 1, 20, '2015-06-23', 3, 1,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 3663, 1, 20, '2015-06-26', 5, 1,32);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 3567, 1, 18, '2015-06-27', 4, 1,30);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 3663, 1, 14, '2015-06-28', 5, 1,30);

----------------------------------�������Ϳ�

------------------------------------------------------------- memnum 21�� �� ���� : ���ڿ�, ������ 75 , 25
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 2, 21, '2015-01-01', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 2, 21, '2015-01-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 2, 21, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 37000, 0, 2, 21, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 2, 21, '2015-03-13', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 2, 21, '2015-04-05', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 2, 21, '2015-04-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 2, 21, '2015-04-14', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 2, 21, '2015-05-26', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 2, 21, '2015-06-16', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 2, 21, '2015-06-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 2, 21, '2015-06-19', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 2, 21, '2015-06-19', 1, 1 ,75);
------------------------------------------------------------- memnum 22�� �� ���� : �Ʊ��, ������ 6 

insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 2, 22, '2015-01-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 2, 22, '2015-01-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 2, 22, '2015-01-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 2, 22, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 2, 22, '2015-03-12', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 2, 22, '2015-04-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 2, 22, '2015-04-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 2, 22, '2015-05-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 2, 22, '2015-05-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 2, 22, '2015-06-11', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 2, 22, '2015-06-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 2, 22, '2015-06-27', 1, 1 ,6);

------------------------------------------------------------- memnum 23�� �� ���� : ���ڿ�, ������ 105 , 30

insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 2, 23, '2015-01-03', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 2, 23, '2015-01-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 2, 23, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 2, 23, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 2, 23, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 2, 23, '2015-03-18', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 2, 23, '2015-04-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 2, 23, '2015-05-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 2, 23, '2015-05-05', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 2, 23, '2015-06-16', 1, 1 ,105);


------------------------------------------------------------- memnum 4�� �� ���� : ���ڿ�, ������ 95 , 28
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 2, 24, '2015-01-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 2, 24, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 2, 24, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 2, 24, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 2, 24, '2015-03-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 2, 24, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 2, 24, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 2, 24, '2015-04-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 2, 24, '2015-05-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 2, 24, '2015-06-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 2, 24, '2015-06-24', 1, 1 ,95);


------------------------------------------------------------- memnum 5�� �� ���� : ���ڿ�, ������ 80 , 27  ,�Ʊ�� :������ 8 
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 2, 25, '2015-01-05', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 2, 25, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 2, 25, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 2, 25, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 2, 25, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 2, 25, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 2, 25, '2015-03-09', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 2, 25, '2015-04-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 2, 25, '2015-04-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 2, 25, '2015-04-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 2, 25, '2015-05-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 2, 25, '2015-05-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 2, 25, '2015-05-26', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 2, 25, '2015-05-26', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 2, 25, '2015-05-26', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 2, 25, '2015-06-19', 1, 1 ,80);


-----------------------------------------------------------------------------------------���� 1 ����

commit;