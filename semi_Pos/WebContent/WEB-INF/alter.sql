alter table shop add(shop_id varchar2(30)constraint shop_shop_id_uq UNIQUE);
alter table shop add(shop_pwd varchar2(30));
ALTER TABLE comm drop column COMM_EMOTI;