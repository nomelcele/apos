
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
drop SEQUENCE workpay_seq;

-- 테이블 시퀀스 모음
Create sequence bonsa_seq
increment by 1 start with 2;

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
----------------------------------------
 create SEQUENCE workpay_seq
 increment by 1 start with 1;
 ---------------------------------------
 