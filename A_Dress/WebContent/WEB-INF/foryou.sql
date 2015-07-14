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
drop table login cascade constraint;
drop table grade cascade constraint;



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

-------------5/28수정---------------------------------------

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

CREATE TABLE login (
  username varchar2(20) NOT NULL,
  password varchar2(20) NOT NULL,
  enabled number(2) NOT NULL,
  constraint login_username_pk PRIMARY KEY (username)
);

CREATE TABLE grade (
  username varchar(20) NOT NULL,
  role varchar(20) NOT NULL,
  PRIMARY KEY (username,role)
);



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

-- 테이블 시퀀스 모음
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






--bonsa insert 이건 하나만
insert into bonsa values(
1,'박대리',
'bon_admin','1234','대리',
'010-5017-3854',sysdate);

--shop insert 애는  test 숫자 늘려가면서 넣어줘 004 써진 부분도 숫자 하나씩 증가하면서 넣어줘
insert into shop values(
shop_seq.nextval,'물류창고'
,'031-234-1231','창원공장',0,0,sysdate,
'test@naver.com','본사 물류창고',
'face_singu.jpg',000,1,'sh_test0','1234'
);

insert into shop values(
shop_seq.nextval,'판교점'
,'031-234-1231','경기 성남시 분당구 백현동 19-2',0,0,sysdate,
'test@naver.com','김혁민',
'face_hyunmin.JPG',004,1,'sh_test','1234'
);


insert into shop values(
shop_seq.nextval,'수지점'
,'031-264-1236','경기 용인시 수지구 동천동 167-3',0,0,sysdate,
'test@naver.com','김진호',
'face_jinho.JPG',005,1,'sh_test1','1234'
);


insert into shop values(
shop_seq.nextval,'성남점'
,'031-134-1631','경기 성남시 분당구 동원동 308-5',0,0,sysdate,
'test@naver.com','이진석',
'face_jinsuk.JPG',006,1,'sh_test2','1234'
);


insert into shop values(
shop_seq.nextval,'부산점'
,'054-214-1291','부산 강서구 성북동 6-2',0,0,sysdate,
'test@naver.com','오주호',
'face_juho.JPG',007,1,'sh_test3','1234'
);


insert into shop values(
shop_seq.nextval,'전주점'
,'063-214-1981','전북 전주시 덕진구 덕진동2가 695-4',0,0,sysdate,
'test@naver.com','전광민',
'face_kwangmin.JPG',008,1,'sh_test4','1234'
);


insert into shop values(
shop_seq.nextval,'충청점'
,'043-134-3231','충북 괴산군 감물면 오성리 45-4',0,0,sysdate,
'test@naver.com','최민식',
'face_munsik.JPG',009,1,'sh_test5','1234'
);


insert into shop values(
shop_seq.nextval,'강원점'
,'033-834-1111','강원 강릉시 교동 1817-1',0,0,sysdate,
'test@naver.com','권오현',
'face_ohyun.JPG',010,1,'sh_test6','1234'
);


insert into shop values(
shop_seq.nextval,'내곡점'
,'02-284-1331','서울 서초구 내곡동 1-645',0,0,sysdate,
'test@naver.com','민성현',
'face_sunghyun.JPG',011,1,'sh_test7','1234'
);


insert into shop values(
shop_seq.nextval,'서초점'
,'02-678-1341','서울 서초구 양재동 326-7',0,0,sysdate,
'test@naver.com','윤성민',
'face_sungmin.JPG',012,1,'sh_test8','1234'
);


insert into shop values(
shop_seq.nextval,'강남점'
,'02-2124-1231','서울 강남구 역삼동 837-12',0,0,sysdate,
'test@naver.com','이윤수',
'face_yoonsu.JPG',013,1,'sh_test9','1234'
);



insert into shop values(
shop_seq.nextval,'한남점'
,'02-234-1841','서울 용산구 한남동 1-44',0,0,sysdate,
'test@naver.com','권희연',
'face_hani.jpg',014,1,'sh_test10','1234'
);


insert into shop values(
shop_seq.nextval,'옥수점'
,'02-234-3451','서울 성동구 옥수동 168-1',0,0,sysdate,
'test@naver.com','오혜리',
'face_hyeri.jpg',015,1,'sh_test11','1234'
);


insert into shop values(
shop_seq.nextval,'약수점'
,'02-234-1281','서울 중구 신당동 369-2',0,0,sysdate,
'test@naver.com','김현아',
'face_hyuna.jpg',016,1,'sh_test12','1234'
);



insert into shop values(
shop_seq.nextval,'왕십리점'
,'02-2124-1531','서울 성동구 도선동 22-1',0,0,sysdate,
'test@naver.com','이지은',
'face_iyou.jpg',017,1,'sh_test13','1234'
);


insert into shop values(
shop_seq.nextval,'의정부점'
,'031-234-1131','경기 의정부시 가능동 71',0,0,sysdate,
'test@naver.com','방민아',
'face_mina.jpg',018,1,'sh_test14','1234'
);


insert into shop values(
shop_seq.nextval,'남양주점'
,'031-224-1221','경기 남양주시 가운동 617-64',0,0,sysdate,
'test@naver.com','정수연',
'face_sica.jpg',019,1,'sh_test15','1234'
);



insert into shop values(
shop_seq.nextval,'죽전점'
,'031-234-1341','경기 용인시 수지구 죽전동 23-2',0,0,sysdate,
'test@naver.com','배수지',
'face_sugi.jpg',020,1,'sh_test16','1234'
);


insert into shop values(
shop_seq.nextval,'오리점'
,'031-2124-6231','경기 성남시 분당구 구미동 197-1',0,0,sysdate,
'test@naver.com','이순규',
'face_sunny.jpg',021,1,'sh_test17','1234'
);


insert into shop values(
shop_seq.nextval,'잠실점'
,'02-123-1255','서울 송파구 잠실동 8',0,0,sysdate,
'test@naver.com','김태연',
'face_taeyeon.jpg',022,1,'sh_test18','1234'
);


insert into shop values(
shop_seq.nextval,'건대점'
,'02-237-7831','서울 광진구 화양동 1',0,0,sysdate,
'test@naver.com','황미영',
'face_tiffany.jpg',023,1,'sh_test19','1234'
);


-- member insert 문 빅데이터용 멤버 1-20
insert into member values(member_seq.nextval,'도하진','010-1234-1234','746-2467','성남시 북구','북구 수성동',0,sysdate,1,'r213333@naver.com','mem_21','1234');
insert into member values(member_seq.nextval,'윤홍순','010-7367-2745','474-1234','서울시 동구','동구 동명동',0,sysdate,1,'lifeveril@naver.com','mem_22','1234');
insert into member values(member_seq.nextval,'한광호','010-5478-5463','346-1234','경남시 서구','서구 우산동',0,sysdate,1,'ama949@naver.com','mem_23','1234');
insert into member values(member_seq.nextval,'윤성현','010-3879-4684','347-3456','경북시 광산구','광산구 두암동',0,sysdate,1,'lifeveril@naver.com','mem_24','1234');
insert into member values(member_seq.nextval,'박경순','010-4548-7564','064-5463','전남 여수시','그냥 미평동',0,sysdate,1,'phoenixcrash@naver.com','mem_25','1234');

insert into member values(member_seq.nextval,'구준표','010-1234-1234','746-2467','성남시 북구','북구 수성동',0,sysdate,1,'r213333@naver.com','mem_26','1234');
insert into member values(member_seq.nextval,'김형준','010-7367-2745','474-1234','서울시 동구','동구 동명동',0,sysdate,1,'lifeveril@naver.com','mem_27','1234');
insert into member values(member_seq.nextval,'구혜선','010-5478-5463','346-1234','경남시 서구','서구 우산동',0,sysdate,1,'ama949@naver.com','mem_28','1234');
insert into member values(member_seq.nextval,'김구라','010-3879-4684','347-3456','경북시 광산구','광산구 두암동',0,sysdate,1,'lifeveril@naver.com','mem_29','1234');
insert into member values(member_seq.nextval,'안소희','010-4548-7564','064-5463','전남 여수시','그냥 미평동',0,sysdate,1,'phoenixcrash@naver.com','mem_30','1234');

insert into member values(member_seq.nextval,'이나영','010-1234-1234','746-2467','성남시 북구','북구 수성동',0,sysdate,1,'r213333@naver.com','mem_31','1234');
insert into member values(member_seq.nextval,'장기하','010-7367-2745','474-1234','서울시 동구','동구 동명동',0,sysdate,1,'lifeveril@naver.com','mem_32','1234');
insert into member values(member_seq.nextval,'정형돈','010-5478-5463','346-1234','경남시 서구','서구 우산동',0,sysdate,1,'ama949@naver.com','mem_33','1234');
insert into member values(member_seq.nextval,'한채영','010-3879-4684','347-3456','경북시 광산구','광산구 두암동',0,sysdate,1,'lifeveril@naver.com','mem_34','1234');
insert into member values(member_seq.nextval,'이수지','010-4548-7564','064-5463','전남 여수시','그냥 미평동',0,sysdate,1,'phoenixcrash@naver.com','mem_35','1234');

insert into member values(member_seq.nextval,'이승기','010-1234-1234','746-2467','성남시 북구','북구 수성동',0,sysdate,1,'r213333@naver.com','mem_36','1234');
insert into member values(member_seq.nextval,'백지영','010-7367-2745','474-1234','서울시 동구','동구 동명동',0,sysdate,1,'lifeveril@naver.com','mem_37','1234');
insert into member values(member_seq.nextval,'박혜선','010-5478-5463','346-1234','경남시 서구','서구 우산동',0,sysdate,1,'ama949@naver.com','mem_38','1234');
insert into member values(member_seq.nextval,'민경훈','010-3879-4684','347-3456','경북시 광산구','광산구 두암동',0,sysdate,1,'lifeveril@naver.com','mem_39','1234');
insert into member values(member_seq.nextval,'김동률','010-4548-7564','064-5463','전남 여수시','그냥 미평동',0,sysdate,1,'phoenixcrash@naver.com','mem_40','1234');

-- insert product
-- 남성복
insert into product values(product_seq.nextval,'남성 블루 니트','1531115001','ba_1531115001.png','img_1531115001.jpg',sysdate,25000,0);
insert into product values(product_seq.nextval,'남성 블루 오버 셔츠','1541115002','ba_1541115002.png','img_1541115002.jpg',sysdate,50000,0);
insert into product values(product_seq.nextval,'남성 스트라이프 레드 니트','1511111003','ba_1511111003.png','img_1511111003.jpg',sysdate,75000,0);
insert into product values(product_seq.nextval,'남성 블루 팬츠','1522115004','ba_1522115004.png','img_1522115004.jpg',sysdate,55000,0);
insert into product values(product_seq.nextval,'남성 카모플라쥬 팬츠','1511215005','ba_1511215005.png','img_1511215005.jpg',sysdate,35000,0);


-- 여성복
insert into product values(product_seq.nextval,'여성 기모노 티셔츠','1512119001','ba_1512119001.png','img_1512119001.jpg',sysdate,25000,0);
insert into product values(product_seq.nextval,'여성 데님 팬츠','1522219002','ba_1522219002.png','img_1522219002.jpg',sysdate,30000,0);
insert into product values(product_seq.nextval,'여성 롱 블레이져','1532115003','ba_1532115003.png','img_1532115003.jpg',sysdate,65000,0);
insert into product values(product_seq.nextval,'여성 체크 원피스','1532110004','ba_1532110004.png','img_1532110004.jpg',sysdate,45000,0);
insert into product values(product_seq.nextval,'여성 화이트 팬츠','1542210005','ba_1542210005.png','img_1542210005.jpg',sysdate,37000,0);



-- 아동복
insert into product values(product_seq.nextval,'아동 노랑 티셔츠','1523103001','ba_1523103001.png','img_1523103001.jpg',sysdate,15000,0);
insert into product values(product_seq.nextval,'아동 민트 원피스','1513104002','ba_1513104002.png','img_1513104002.jpg',sysdate,22000,0);
insert into product values(product_seq.nextval,'아동 오가닉 핑크 원피스','1523101003','ba_1523101003.png','img_1523101003.jpg',sysdate,17000,0);
insert into product values(product_seq.nextval,'아동 포켓 데님 팬츠','1543211004','ba_1543211004.png','img_1543211004.jpg',sysdate,9000,0);
insert into product values(product_seq.nextval,'아동 폴로셔츠','1533104005','ba_1533104005.png','img_1533104005.jpg',sysdate,12000,0);





--이곳은 staff table입니다.--



insert into staff values(staff_seq.nextval,'도하진',1,'010-121-1234',1,'staff_test0',1234);
insert into staff values(staff_seq.nextval,'강은지',2,'123-1221-3000',1,'staff_test1',1234);
insert into staff values(staff_seq.nextval,'박은지',2,'123-123-1111',1,'staff_test2',1234);

insert into staff values(staff_seq.nextval,'윤과장',1,'123-124-2222',2,'staff_test3',1234);
insert into staff values(staff_seq.nextval,'륭과장',2,'123-125-3333',2,'staff_test4',1234);
insert into staff values(staff_seq.nextval,'석종현',2,'123-126-5555',2,'staff_test5',1234);

insert into staff values(staff_seq.nextval,'강은지',1,'123-127-6666',3,'staff_test6',1234);
insert into staff values(staff_seq.nextval,'김윤지',2,'123-128-7777',3,'staff_test7',1234);
insert into staff values(staff_seq.nextval,'김현정',2,'123-129-8888',3,'staff_test8',1234);

insert into staff values(staff_seq.nextval,'윤정아',1,'123-113-1111',4,'staff_test9',1234);
insert into staff values(staff_seq.nextval,'임수현',2,'123-123-9999',4,'staff_test10',1234);
insert into staff values(staff_seq.nextval,'임혜승',2,'123-123-2222',4,'staff_test11',1234);

insert into staff values(staff_seq.nextval,'박병준',1,'123-123-3333',5,'staff_test12',1234);
insert into staff values(staff_seq.nextval,'성동원',2,'123-123-5555',5,'staff_test13',1234);
insert into staff values(staff_seq.nextval,'최철녕',2,'123-123-6666',5,'staff_test14',1234);

insert into staff values(staff_seq.nextval,'서경연',1,'123-123-7777',6,'staff_test15',1234);
insert into staff values(staff_seq.nextval,'박경찬',2,'123-123-8888',6,'staff_test16',1234);
insert into staff values(staff_seq.nextval,'서경연',2,'123-123-9999',6,'staff_test17',1234);

insert into staff values(staff_seq.nextval,'윤홍기',1,'123-123-2222',7,'staff_test18',1234);
insert into staff values(staff_seq.nextval,'한광호',2,'123-123-1234',7,'staff_test19',1234);
insert into staff values(staff_seq.nextval,'윤성현',2,'123-123-5678',7,'staff_test20',1234);


insert into staff values(staff_seq.nextval,'김수환',1,'123-123-1111',8,'staff_test21',1234);
insert into staff values(staff_seq.nextval,'김영은',2,'123-123-2222',8,'staff_test22',1234);
insert into staff values(staff_seq.nextval,'모하람',2,'123-123-3333',8,'staff_test23',1234);


insert into staff values(staff_seq.nextval,'김성호',1,'123-123-6666',9,'staff_test24',1234);
insert into staff values(staff_seq.nextval,'홍명표',2,'123-123-7777',9,'staff_test25',1234);
insert into staff values(staff_seq.nextval,'김명준',2,'123-123-5555',9,'staff_test26',1234);


insert into staff values(staff_seq.nextval,'김주상',1,'123-123-3232',10,'staff_test27',1234);
insert into staff values(staff_seq.nextval,'신호석',2,'123-123-3333',10,'staff_test28',1234);
insert into staff values(staff_seq.nextval,'이수인',2,'123-123-7777',10,'staff_test29',1234);


insert into staff values(staff_seq.nextval,'안지영',1,'123-123-9999',11,'staff_test30',1234);
insert into staff values(staff_seq.nextval,'김영권',2,'123-123-0000',11,'staff_test31',1234);
insert into staff values(staff_seq.nextval,'이재흥',2,'123-123-2222',11,'staff_test32',1234);


insert into staff values(staff_seq.nextval,'이경석',1,'123-123-3333',12,'staff_test33',1234);
insert into staff values(staff_seq.nextval,'김남혁',2,'123-123-1111',12,'staff_test34',1234);
insert into staff values(staff_seq.nextval,'조민영',2,'123-123-2222',12,'staff_test35',1234);


insert into staff values(staff_seq.nextval,'정혜영',1,'123-123-3333',13,'staff_test36',1234);
insert into staff values(staff_seq.nextval,'엄성렬',2,'123-123-1111',13,'staff_test37',1234);
insert into staff values(staff_seq.nextval,'권혁민',2,'123-123-2222',13,'staff_test38',1234);


insert into staff values(staff_seq.nextval,'윤여환',1,'123-123-3333',14,'staff_test39',1234);
insert into staff values(staff_seq.nextval,'최영윤',2,'123-123-4444',14,'staff_test40',1234);
insert into staff values(staff_seq.nextval,'임현지',2,'123-123-5555',14,'staff_test41',1234);


insert into staff values(staff_seq.nextval,'경재욱',1,'123-123-6666',15,'staff_test42',1234);
insert into staff values(staff_seq.nextval,'이인의',2,'123-123-7777',15,'staff_test43',1234);
insert into staff values(staff_seq.nextval,'안주호',2,'123-123-8888',15,'staff_test44',1234);

--사원들의 근무 대리점을 출력하시오.







-- stock (5/28) 수정

-- 대리점 1호, 남성옷 1호
-- 대리점 1호, 남성옷 1호 95사이즈 재고 0개
-- 일단 대리점1호, 남성,여성,아기옷 1호에는 각각 재고가 0개씩 포함되있음
insert into stock values(stock_seq.nextval,'1531115001',0,1,95);
insert into stock values(stock_seq.nextval,'1531115001',20,1,100);
insert into stock values(stock_seq.nextval,'1531115001',25,1,105);

-- 대리점 2호
-- 대리점 2호, 남성옷 1호 100사이즈 재고 0개
insert into stock values(stock_seq.nextval,'1531115001',63,2,95);
insert into stock values(stock_seq.nextval,'1531115001',0,2,100);
insert into stock values(stock_seq.nextval,'1531115001',58,2,105);

-- 대리점 3호
-- 대리점 3호, 남성옷 1호 105사이즈 재고 0개
insert into stock values(stock_seq.nextval,'1531115001',43,3,95);
insert into stock values(stock_seq.nextval,'1531115001',32,3,100);
insert into stock values(stock_seq.nextval,'1531115001',0,3,105);


-- 대리점 1호, 여성옷 1호
-- 대리점 1호, 여성옷 1호 66사이즈 재고 0개
insert into stock values(stock_seq.nextval,'1512119001',32,1,55);
insert into stock values(stock_seq.nextval,'1512119001',0,1,66);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1512119001',33,2,55);
insert into stock values(stock_seq.nextval,'1512119001',54,2,66);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1512119001',43,3,55);
insert into stock values(stock_seq.nextval,'1512119001',22,3,66);


-- 대리점 1호, 아기옷 1호
-- 대리점 1호, 아기옷 1호 3사이즈 재고 0개
insert into stock values(stock_seq.nextval,'1523103001',37,1,2);
insert into stock values(stock_seq.nextval,'1523103001',0,1,3);
insert into stock values(stock_seq.nextval,'1523103001',62,1,4);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1523103001',17,2,2);
insert into stock values(stock_seq.nextval,'1523103001',24,2,3);
insert into stock values(stock_seq.nextval,'1523103001',82,2,4);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1523103001',27,3,2);
insert into stock values(stock_seq.nextval,'1523103001',54,3,3);
insert into stock values(stock_seq.nextval,'1523103001',35,3,4);





-- 대리점 1호, 남성옷 2호
-- 대리점 1호, 남성옷 2호 95사이즈 재고 0개
insert into stock values(stock_seq.nextval,'1541115002',0,1,95);
insert into stock values(stock_seq.nextval,'1541115002',20,1,100);
insert into stock values(stock_seq.nextval,'1541115002',25,1,105);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1541115002',63,2,95);
insert into stock values(stock_seq.nextval,'1541115002',14,2,100);
insert into stock values(stock_seq.nextval,'1541115002',58,2,105);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1541115002',43,3,95);
insert into stock values(stock_seq.nextval,'1541115002',32,3,100);
insert into stock values(stock_seq.nextval,'1541115002',85,3,105);


-- 대리점 1호, 여성옷 2호
-- 대리점 1호, 여성옷 2호 66사이즈 재고 0개
insert into stock values(stock_seq.nextval,'1541115002',32,1,55);
insert into stock values(stock_seq.nextval,'1541115002',54,1,66);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1541115002',33,2,55);
insert into stock values(stock_seq.nextval,'1541115002',0,2,66);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1541115002',43,3,55);
insert into stock values(stock_seq.nextval,'1541115002',22,3,66);


-- 대리점 1호, 아기옷 2호
-- 대리점 1호, 아기옷 2호 2사이즈 재고 0개
insert into stock values(stock_seq.nextval,'1513104002',0,1,2);
insert into stock values(stock_seq.nextval,'1513104002',34,1,3);
insert into stock values(stock_seq.nextval,'1513104002',62,1,4);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1513104002',17,2,2);
insert into stock values(stock_seq.nextval,'1513104002',24,2,3);
insert into stock values(stock_seq.nextval,'1513104002',82,2,4);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1513104002',27,3,2);
insert into stock values(stock_seq.nextval,'1513104002',54,3,3);
insert into stock values(stock_seq.nextval,'1513104002',35,3,4);




-- 대리점 1호, 남성옷 3호
insert into stock values(stock_seq.nextval,'1511111003',50,1,95);
insert into stock values(stock_seq.nextval,'1511111003',20,1,100);
insert into stock values(stock_seq.nextval,'1511111003',25,1,105);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1511111003',63,2,95);
insert into stock values(stock_seq.nextval,'1511111003',14,2,100);
insert into stock values(stock_seq.nextval,'1511111003',58,2,105);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1511111003',43,3,95);
insert into stock values(stock_seq.nextval,'1511111003',32,3,100);
insert into stock values(stock_seq.nextval,'1511111003',85,3,105);


-- 대리점 1호, 여성옷 3호
insert into stock values(stock_seq.nextval,'1532115003',32,1,55);
insert into stock values(stock_seq.nextval,'1532115003',54,1,66);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1532115003',33,2,55);
insert into stock values(stock_seq.nextval,'1532115003',54,2,66);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1532115003',43,3,55);
insert into stock values(stock_seq.nextval,'1532115003',22,3,66);


-- 대리점 1호, 아기옷 3호
insert into stock values(stock_seq.nextval,'1523101003',37,1,2);
insert into stock values(stock_seq.nextval,'1523101003',34,1,3);
insert into stock values(stock_seq.nextval,'1523101003',62,1,4);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1523101003',17,2,2);
insert into stock values(stock_seq.nextval,'1523101003',24,2,3);
insert into stock values(stock_seq.nextval,'1523101003',82,2,4);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1523101003',27,3,2);
insert into stock values(stock_seq.nextval,'1523101003',54,3,3);
insert into stock values(stock_seq.nextval,'1523101003',35,3,4);



-- 추가
-- 대리점 1호, 남성옷 4호
insert into stock values(stock_seq.nextval,'1522115004',50,1,95);
insert into stock values(stock_seq.nextval,'1522115004',20,1,100);
insert into stock values(stock_seq.nextval,'1522115004',25,1,105);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1522115004',63,2,95);
insert into stock values(stock_seq.nextval,'1522115004',14,2,100);
insert into stock values(stock_seq.nextval,'1522115004',58,2,105);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1522115004',43,3,95);
insert into stock values(stock_seq.nextval,'1522115004',32,3,100);
insert into stock values(stock_seq.nextval,'1522115004',85,3,105);


-- 대리점 1호, 여성옷 4호
insert into stock values(stock_seq.nextval,'1532110004',32,1,55);
insert into stock values(stock_seq.nextval,'1532110004',54,1,66);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1532110004',33,2,55);
insert into stock values(stock_seq.nextval,'1532110004',54,2,66);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1532110004',43,3,55);
insert into stock values(stock_seq.nextval,'1532110004',22,3,66);



-- 대리점 1호, 아기옷 4호
insert into stock values(stock_seq.nextval,'1543211004',37,1,2);
insert into stock values(stock_seq.nextval,'1543211004',34,1,3);
insert into stock values(stock_seq.nextval,'1543211004',62,1,4);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1543211004',17,2,2);
insert into stock values(stock_seq.nextval,'1543211004',24,2,3);
insert into stock values(stock_seq.nextval,'1543211004',82,2,4);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1543211004',27,3,2);
insert into stock values(stock_seq.nextval,'1543211004',54,3,3);
insert into stock values(stock_seq.nextval,'1543211004',35,3,4);



-- 대리점 1호, 남성옷 5호
insert into stock values(stock_seq.nextval,'1511215005',50,1,95);
insert into stock values(stock_seq.nextval,'1511215005',20,1,100);
insert into stock values(stock_seq.nextval,'1511215005',25,1,105);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1511215005',63,2,95);
insert into stock values(stock_seq.nextval,'1511215005',14,2,100);
insert into stock values(stock_seq.nextval,'1511215005',58,2,105);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1511215005',43,3,95);
insert into stock values(stock_seq.nextval,'1511215005',32,3,100);
insert into stock values(stock_seq.nextval,'1511215005',85,3,105);



-- 대리점 1호, 여성옷 5호
insert into stock values(stock_seq.nextval,'1542210005',32,1,55);
insert into stock values(stock_seq.nextval,'1542210005',54,1,66);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1542210005',33,2,55);
insert into stock values(stock_seq.nextval,'1542210005',54,2,66);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1542210005',43,3,55);
insert into stock values(stock_seq.nextval,'1542210005',22,3,66);



-- 대리점 1호, 아기옷 5호
insert into stock values(stock_seq.nextval,'1533104005',37,1,2);
insert into stock values(stock_seq.nextval,'1533104005',34,1,3);
insert into stock values(stock_seq.nextval,'1533104005',62,1,4);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1533104005',17,2,2);
insert into stock values(stock_seq.nextval,'1533104005',24,2,3);
insert into stock values(stock_seq.nextval,'1533104005',82,2,4);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1533104005',27,3,2);
insert into stock values(stock_seq.nextval,'1533104005',54,3,3);
insert into stock values(stock_seq.nextval,'1533104005',35,3,4);


-- login bon
insert into login values('bon_admin', '1234', 1);

-- login sh
insert into login values('sh_test', '1234', 1);
insert into login values('sh_test0', '1234', 1);
insert into login values('sh_test1', '1234', 1);
insert into login values('sh_test2', '1234', 1);
insert into login values('sh_test3', '1234', 1);
insert into login values('sh_test4', '1234', 1);
insert into login values('sh_test5', '1234', 1);
insert into login values('sh_test6', '1234', 1);
insert into login values('sh_test7', '1234', 1);
insert into login values('sh_test8', '1234', 1);
insert into login values('sh_test9', '1234', 1);
insert into login values('sh_test10', '1234', 1);
insert into login values('sh_test11', '1234', 1);
insert into login values('sh_test12', '1234', 1);
insert into login values('sh_test13', '1234', 1);
insert into login values('sh_test14', '1234', 1);
insert into login values('sh_test15', '1234', 1);
insert into login values('sh_test16', '1234', 1);
insert into login values('sh_test17', '1234', 1);
insert into login values('sh_test18', '1234', 1);
insert into login values('sh_test19', '1234', 1);

-- login staff
insert into login values('staff_test0', '1234', 1);
insert into login values('staff_test1', '1234', 1);
insert into login values('staff_test2', '1234', 1);
insert into login values('staff_test3', '1234', 1);
insert into login values('staff_test4', '1234', 1);
insert into login values('staff_test5', '1234', 1);
insert into login values('staff_test6', '1234', 1);
insert into login values('staff_test7', '1234', 1);
insert into login values('staff_test8', '1234', 1);
insert into login values('staff_test9', '1234', 1);
insert into login values('staff_test10', '1234', 1);
insert into login values('staff_test11', '1234', 1);
insert into login values('staff_test12', '1234', 1);
insert into login values('staff_test13', '1234', 1);
insert into login values('staff_test14', '1234', 1);
insert into login values('staff_test15', '1234', 1);
insert into login values('staff_test16', '1234', 1);
insert into login values('staff_test17', '1234', 1);
insert into login values('staff_test18', '1234', 1);
insert into login values('staff_test19', '1234', 1);
insert into login values('staff_test20', '1234', 1);
insert into login values('staff_test21', '1234', 1);
insert into login values('staff_test22', '1234', 1);
insert into login values('staff_test23', '1234', 1);
insert into login values('staff_test24', '1234', 1);
insert into login values('staff_test25', '1234', 1);
insert into login values('staff_test26', '1234', 1);
insert into login values('staff_test27', '1234', 1);
insert into login values('staff_test28', '1234', 1);
insert into login values('staff_test29', '1234', 1);
insert into login values('staff_test30', '1234', 1);
insert into login values('staff_test31', '1234', 1);
insert into login values('staff_test32', '1234', 1);
insert into login values('staff_test33', '1234', 1);
insert into login values('staff_test34', '1234', 1);
insert into login values('staff_test35', '1234', 1);
insert into login values('staff_test36', '1234', 1);
insert into login values('staff_test37', '1234', 1);
insert into login values('staff_test38', '1234', 1);
insert into login values('staff_test39', '1234', 1);
insert into login values('staff_test40', '1234', 1);
insert into login values('staff_test41', '1234', 1);
insert into login values('staff_test42', '1234', 1);
insert into login values('staff_test43', '1234', 1);
insert into login values('staff_test44', '1234', 1);


-- grade bon
insert into grade values('bon_admin', 'bon');

-- grade shop

insert into grade values('sh_test', 'shop');
insert into grade values('sh_test0', 'shop');
insert into grade values('sh_test1', 'shop');
insert into grade values('sh_test2', 'shop');
insert into grade values('sh_test3', 'shop');
insert into grade values('sh_test4', 'shop');
insert into grade values('sh_test5', 'shop');
insert into grade values('sh_test6', 'shop');
insert into grade values('sh_test7', 'shop');
insert into grade values('sh_test8', 'shop');
insert into grade values('sh_test9', 'shop');
insert into grade values('sh_test10', 'shop');
insert into grade values('sh_test11', 'shop');
insert into grade values('sh_test12', 'shop');
insert into grade values('sh_test13', 'shop');
insert into grade values('sh_test14', 'shop');
insert into grade values('sh_test15', 'shop');
insert into grade values('sh_test16', 'shop');
insert into grade values('sh_test17', 'shop');
insert into grade values('sh_test18', 'shop');
insert into grade values('sh_test19', 'shop');

-- grade staff
insert into grade values('staff_test0', 'staff');
insert into grade values('staff_test1', 'staff');
insert into grade values('staff_test2', 'staff');
insert into grade values('staff_test3', 'staff');
insert into grade values('staff_test4', 'staff');
insert into grade values('staff_test5', 'staff');
insert into grade values('staff_test6', 'staff');
insert into grade values('staff_test7', 'staff');
insert into grade values('staff_test8', 'staff');
insert into grade values('staff_test9', 'staff');
insert into grade values('staff_test10', 'staff');
insert into grade values('staff_test11', 'staff');
insert into grade values('staff_test12', 'staff');
insert into grade values('staff_test13', 'staff');
insert into grade values('staff_test14', 'staff');
insert into grade values('staff_test15', 'staff');
insert into grade values('staff_test16', 'staff');
insert into grade values('staff_test17', 'staff');
insert into grade values('staff_test18', 'staff');
insert into grade values('staff_test19', 'staff');
insert into grade values('staff_test20', 'staff');
insert into grade values('staff_test21', 'staff');
insert into grade values('staff_test22', 'staff');
insert into grade values('staff_test23', 'staff');
insert into grade values('staff_test24', 'staff');
insert into grade values('staff_test25', 'staff');
insert into grade values('staff_test26', 'staff');
insert into grade values('staff_test27', 'staff');
insert into grade values('staff_test28', 'staff');
insert into grade values('staff_test29', 'staff');
insert into grade values('staff_test30', 'staff');
insert into grade values('staff_test31', 'staff');
insert into grade values('staff_test32', 'staff');
insert into grade values('staff_test33', 'staff');
insert into grade values('staff_test34', 'staff');
insert into grade values('staff_test35', 'staff');
insert into grade values('staff_test36', 'staff');
insert into grade values('staff_test37', 'staff');
insert into grade values('staff_test38', 'staff');
insert into grade values('staff_test39', 'staff');
insert into grade values('staff_test40', 'staff');
insert into grade values('staff_test41', 'staff');
insert into grade values('staff_test42', 'staff');
insert into grade values('staff_test43', 'staff');
insert into grade values('staff_test44', 'staff');



----------------------------------빅테이터용

------------------------------------------------------------- memnum 21일 때 시작 : 여자옷, 사이즈 75 , 25
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 2, 1, '2015-01-01', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 2, 1, '2015-01-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 2, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 37000, 0, 2, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 2, 1, '2015-03-13', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 2, 1, '2015-04-05', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 2, 1, '2015-04-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 2, 1, '2015-04-14', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 2, 1, '2015-05-26', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 2, 1, '2015-06-16', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 2, 1, '2015-06-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 2, 1, '2015-06-19', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 2, 1, '2015-06-19', 1, 1 ,75);
------------------------------------------------------------- memnum 22일 때 시작 : 아기옷, 사이즈 6 

insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 2, 2, '2015-01-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 2, 2, '2015-01-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 2, 2, '2015-01-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 2, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 2, 2, '2015-03-12', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 2, 2, '2015-04-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 2, 2, '2015-04-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 2, 2, '2015-05-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 2, 2, '2015-05-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 2, 2, '2015-06-11', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 2, 2, '2015-06-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 2, 2, '2015-06-27', 1, 1 ,6);

------------------------------------------------------------- memnum 23일 때 시작 : 남자옷, 사이즈 105 , 30

insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 2, 3, '2015-01-03', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 2, 3, '2015-01-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 2, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 2, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 2, 3, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 2, 3, '2015-03-18', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 2, 3, '2015-04-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 2, 3, '2015-05-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 2, 3, '2015-05-05', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 2, 3, '2015-06-16', 1, 1 ,105);


------------------------------------------------------------- memnum 4일 때 시작 : 남자옷, 사이즈 95 , 28
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 2, 4, '2015-01-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 2, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 2, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 2, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 2, 4, '2015-03-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 2, 4, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 2, 4, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 2, 4, '2015-04-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 2, 4, '2015-05-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 2, 4, '2015-06-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 2, 4, '2015-06-24', 1, 1 ,95);


------------------------------------------------------------- memnum 5일 때 시작 : 여자옷, 사이즈 80 , 27  ,아기옷 :사이즈 8 
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 2, 5, '2015-01-05', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 2, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 2, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 2, 5, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 2, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 2, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 2, 5, '2015-03-09', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 2, 5, '2015-04-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 2, 5, '2015-04-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 2, 5, '2015-04-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 2, 5, '2015-05-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 2, 5, '2015-05-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 2, 5, '2015-05-26', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 2, 5, '2015-05-26', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 2, 5, '2015-05-26', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 2, 5, '2015-06-19', 1, 1 ,80);
------------------------------------------------------------- memnum 6일 때 시작 : 남자, 105, 32


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 2, 6, '2015-01-06', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 2, 6, '2015-02-16', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 2, 6, '2015-02-16', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 2, 6, '2015-03-05', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 2, 6, '2015-04-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 2, 6, '2015-04-23', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 2, 6, '2015-05-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 2, 6, '2015-06-05', 1, 1 ,32);


------------------------------------------------------------- memnum 7일 때 시작 : 남자, 95, 28 아기옷 : 7


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 2, 7, '2015-01-07', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 2, 7, '2015-02-02', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 2, 7, '2015-02-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 2, 7, '2015-02-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 2, 7, '2015-03-03', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 2, 7, '2015-03-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 2, 7, '2015-04-09', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 2, 7, '2015-04-13', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 2, 7, '2015-05-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 2, 7, '2015-06-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 2, 7, '2015-06-11', 1, 1 ,7);

------------------------------------------------------------- memnum 8일 때 시작 : 여, 85, 29



insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 2, 8, '2015-01-13', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 2, 8, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 2, 8, '2015-01-26', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 2, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 8, '2015-03-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 2, 8, '2015-04-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 2, 8, '2015-05-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 2, 8, '2015-05-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 8, '2015-06-03', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 2, 8, '2015-06-19', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 2, 8, '2015-06-25', 1, 1 ,85);


------------------------------------------------------------- memnum 9 일 때 시작 : 남자, 100, 30


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 2, 9, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 2, 9, '2015-01-05', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 2, 9, '2015-01-27', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 2, 9, '2015-02-21', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 2, 9, '2015-02-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 2, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 2, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 2, 9, '2015-04-14', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 2, 9, '2015-05-14', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 2, 9, '2015-05-17', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 2, 9, '2015-06-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 2, 9, '2015-06-01', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 2, 9, '2015-06-29', 1, 1 ,100);


------------------------------------------------------------- memnum 10일 때 시작 : 여, 75, 25


insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 10, '2015-01-27', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 2, 10, '2015-02-05', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 2, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 2, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 2, 10, '2015-03-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 2, 10, '2015-04-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 10, '2015-04-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 10, '2015-04-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 10, '2015-05-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 2, 10, '2015-06-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 10, '2015-06-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 10, '2015-06-16', 1, 1 ,75);


------------------------------------------------------------- memnum 11일 때 시작 : 여, 75, 25 아기옷 8

insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 11, '2015-01-13', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 2, 11, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 2, 11, '2015-03-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 2, 11, '2015-03-11', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 2, 11, '2015-03-29', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 2, 11, '2015-04-03', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 2, 11, '2015-04-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 2, 11, '2015-04-28', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 2, 11, '2015-05-28', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 2, 11, '2015-06-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 2, 11, '2015-06-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 2, 11, '2015-06-14', 1, 1 ,8);

------------------------------------------------------------- memnum 12 일 때 시작 : 남자, 100, 28
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 2, 12, '2015-01-11', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 2, 12, '2015-01-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 2, 12, '2015-01-22', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 2, 12, '2015-02-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 2, 12, '2015-02-19', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 2, 12, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 2, 12, '2015-03-07', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 2, 12, '2015-03-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 2, 12, '2015-03-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 2, 12, '2015-04-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 2, 12, '2015-05-02', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 2, 12, '2015-05-09', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 2, 12, '2015-06-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 2, 12, '2015-06-26', 1, 1 ,28);



------------------------------------------------------------- memnum 13일 때 시작 : 여, 80, 25 

insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 2, 13, '2015-01-07', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 2, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 2, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 13, '2015-03-08', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 2, 13, '2015-03-08', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 2, 13, '2015-03-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 13, '2015-04-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 2, 13, '2015-04-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 2, 13, '2015-05-06', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 2, 13, '2015-05-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 13, '2015-05-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 2, 13, '2015-06-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 13, '2015-06-26', 1, 1 ,80);

------------------------------------------------------------- memnum 14일 때 시작 : 여, 85, 29


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 2, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 2, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 14, '2015-02-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 2, 14, '2015-02-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 14, '2015-03-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 2, 14, '2015-03-28', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 2, 14, '2015-04-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 14, '2015-05-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 2, 13, '2015-05-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 2, 14, '2015-06-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 2, 14, '2015-06-29', 1, 1 ,29);

------------------------------------------------------------- memnum 15일 때 시작 : 여, 80, 25  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 2, 15, '2015-01-29', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '151211900',	25000, 0, 2, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 2, 15, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 2, 15, '2015-02-16', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 2, 15, '2015-03-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 2, 15, '2015-03-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 15, '2015-03-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 2, 15, '2015-04-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 2, 15, '2015-04-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 2, 15, '2015-05-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 2, 15, '2015-05-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 2, 15, '2015-05-05', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 15, '2015-05-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 2, 15, '2015-06-27', 1, 1 ,6);


------------------------------------------------------------- memnum 16일 때 시작 : 남 , 100, 30  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 2, 16, '2015-01-13', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 2, 16, '2015-01-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 2, 16, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 2, 16, '2015-03-16', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 2, 16, '2015-03-26', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 2, 16, '2015-04-24', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 2, 16, '2015-05-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 2, 16, '2015-05-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 2, 16, '2015-06-08', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 2, 16, '2015-06-17', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 2, 16, '2015-06-17', 1, 1 ,6);

------------------------------------------------------------- memnum 17일 때 시작 : 여, 85, 27  아기옷 : 7



insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 2, 17, '2015-01-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 2, 17, '2015-02-10', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 2, 17, '2015-03-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 2, 17, '2015-03-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 2, 17, '2015-03-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 2, 17, '2015-04-22', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 2, 17, '2015-04-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 17, '2015-05-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 2, 17, '2015-05-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 2, 17, '2015-05-19', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 17, '2015-06-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 2, 17, '2015-06-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 2, 17, '2015-06-20', 1, 1 ,7);


------------------------------------------------------------- memnum 18일 때 시작 : 여, 80, 27


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 2, 18, '2015-01-22', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 2, 18, '2015-02-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 2, 18, '2015-03-17', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 2, 18, '2015-04-24', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 2, 18, '2015-05-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 2, 18, '2015-05-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 18, '2015-06-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 2, 18, '2015-06-23', 1, 1 ,27);


------------------------------------------------------------- memnum 19일 때 시작 : 남 105 , 32 아기옷 7

insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 2, 19, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 2, 19, '2015-01-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 2, 19, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 2, 19, '2015-02-14', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 2, 19, '2015-03-17', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 2, 19, '2015-03-26', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 2, 19, '2015-03-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 2, 19, '2015-04-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 2, 19, '2015-04-21', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 2, 19, '2015-05-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 2, 19, '2015-05-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 2, 19, '2015-05-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 2, 19, '2015-06-11', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 2, 19, '2015-06-11', 1, 1 ,7);


------------------------------------------------------------- memnum 40일 때 시작 : 남 95, 28


insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 2, 20, '2015-01-08', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 2, 20, '2015-01-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 2, 20, '2015-01-19', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 2, 20, '2015-02-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 2, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 2, 20, '2015-03-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 2, 20, '2015-03-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 2, 20, '2015-04-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 2, 20, '2015-04-21', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 2, 20, '2015-04-29', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 2, 20, '2015-05-22', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 2, 20, '2015-06-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 2, 20, '2015-06-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 2, 20, '2015-06-19', 1, 1 ,8);


commit;