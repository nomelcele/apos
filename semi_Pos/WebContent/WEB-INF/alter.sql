alter table shop add(shop_id varchar2(30)constraint shop_shop_id_uq UNIQUE);
alter table shop add(shop_pwd varchar2(30));
ALTER TABLE comm drop column COMM_EMOTI;
alter table product MODIFY  pro_name varchar2(50);
alter table product modify pro_code varchar2(50);
alter table member add(mem_email varchar2(50)):
--05.22 ¼öÁ¤
alter table shop modify shop_adr varchar2(300);
alter table member modify mem_addr varchar2(200);
alter table member modify mem_deaddr varchar2(200);