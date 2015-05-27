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
create table shop(
shop_num number(10) constraint shop_shop_num_pk primary key,
shop_name varchar2(20) constraint shop_shop_name_nn not null,
shop_tel varchar2(20)constraint shop_shop_tel_nn not null,
shop_adr varchar2(30)constraint shop_shop_adr_nn not null,
shop_map_x float constraint shop_shop_map_x_nn not null,
shop_map_y float constraint shop_shop_map_y_nn not null,
shop_date date ,
shop_mail varchar2(30) constraint shop_shop_mail_nn not null,
shop_master varchar2(30) constraint shop_shop_master_nn not null,
shop_img varchar2(50) constraint shop_shop_img_nn not null,
shop_crnum number(20) constraint shop_shop_crnum_nn not null, 
shop_bonnum number(10) constraint shop_shop_bonnum_nn not null,
constraint shop_shop_bonnum_fk foreign key(shop_bonnum)
references bonsa(bon_num) on delete cascade ,
constraint shop_shop_crnum_uq unique (shop_crnum) 
);

create table member(
mem_num number(10) constraint member_mem_num_pk primary key,
mem_name varchar2(20) constraint member_mem_name_nn not null,
mem_tel varchar2(20)constraint member_mem_tel_nn not null,
mem_post varchar2(20)constraint member_mem_post_nn not null,
mem_addr varchar2(100)constraint member_mem_addr_nn not null,
mem_deaddr varchar2(100)constraint member_mem_deaddr_nn not null,
mem_mileage number(10),
mem_date date,
mem_shopnum number(10),
constraint member_memb_shopnum_fk foreign key(mem_shopnum)
references shop(shop_num) on delete cascade
);


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

create table comm(
comm_num number(10) constraint comm_comm_num_pk primary key,
comm_bonum number(10),
comm_writer varchar2(20) constraint comm_comm_writer_nn not null,
comm_cont varchar2(100) constraint comm_comm_cont_nn not null,
comm_date date,
comm_emoti varchar2(50),
constraint comm_comm_bonum_fk foreign key (comm_bonum)
references board(bo_num) on delete cascade
);

create table chat(
chat_num number(10) constraint chat_chat_num_pk primary key,
chat_id varchar2(20) constraint chat_chat_id_nn not null,
chat_cont varchar2(200),
chat_ip varchar(20),
chat_date date
);
create table loginout(
log_num number(10) constraint loginout_log_num_pk primary key,
log_in date,
log_out date,
log_bonnum number(10),
constraint loginout_log_bonnum_fk foreign key (log_bonnum)
references bonsa(bon_num) on delete cascade
);

create table product(
pro_num number(10)constraint product_pro_num_pk primary key,
pro_name varchar2(10) constraint product_pro_name_nn not null,
pro_code varchar2(10) constraint product_pro_code_nn not null,
pro_size number(5) constraint product_pro_size_nn not null,
pro_barcode varchar2(50) constraint product_pro_barcode_nn not null,
pro_img varchar2(50) constraint product_pro_img_nn not null,
pro_date date
);
create table sell(
sell_num number(10) constraint sell_sell_num_pk primary key,
sell_pronum number(10),
sell_cash number(20) constraint sell_sell_cash_nn not null,
sell_card number(20) constraint sell_sell_card_nn not null,
sell_mileage number(20) constraint sell_sell_mileage_nn not null,
sell_shopnum number(10) ,
sell_memnum number(10),
sell_date date,
constraint sell_sell_pronum_fk foreign key(sell_pronum)
references product(pro_num) on delete cascade,
constraint sell_sell_shopnum_fk foreign key(sell_shopnum)
references shop(shop_num) on delete cascade,
constraint sell_sell_memnum_fk foreign key(sell_memnum)
references member(mem_num) on delete cascade);

create table hotkey(
key_num number(10) constraint hotkey_key_num_pk primary key,
key_name varchar2(30),
key_hot number(10),
key_mail varchar2(30),
key_crnum number(20) constraint hotkey_key_crnum_uq UNIQUE,
key_date date
);

create table stock(
sto_num number(10) constraint stock_sto_num_pk primary key,
sto_pronum number(10),
sto_amount number(10),
sto_shopnum number(10),
constraint stock_sto_pronum_fk foreign key(sto_pronum)
references product(pro_num) on delete cascade,
constraint stock_sto_shopnum_fk foreign key(sto_shopnum)
references shop(shop_num) on delete cascade
);

create table discount(
dis_num number(10) constraint discount_dis_num_pk primary key,
dis_salerate float(10),
dis_pronum number(10),
constraint discount_dis_pronum_fk foreign key (dis_pronum)
references product(pro_num) on delete cascade
);
