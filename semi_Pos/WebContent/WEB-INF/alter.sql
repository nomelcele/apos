alter table shop add(shop_id varchar2(30)constraint shop_shop_id_uq UNIQUE);
alter table shop add(shop_pwd varchar2(30));
ALTER TABLE comm drop column COMM_EMOTI;
alter table product MODIFY  pro_name varchar2(50);
alter table product modify pro_code varchar2(50);
alter table member add(mem_email varchar2(50));
--05.22 ¼öÁ¤
alter table shop modify shop_adr varchar2(300);
alter table member modify mem_addr varchar2(200);
alter table member modify mem_deaddr varchar2(200);

--05.22staff Å×ÀÌºí Ãß°¡
create table staff(
staff_num number constraint staff_staff_num_pk primary key,
staff_name varchar2(20),
staff_position varchar2(30),
staff_tel varchar2(30),
staff_shopnum number(10), constraint staff_staff_shopnum_fk foreign key (staff_shopnum)
REFERENCES shop(shop_num) on delete cascade);


Create sequence staff_seq
<<<<<<< .mine
increment by 1 start with 1;



insert into product values(product_seq.nextVal,'³²¼º °ËÀº»ö ÀÚÄÏ','15110001',95,'0110','25000',sysdate);
insert into product values(product_seq.nextVal,'³²¼º Èò»ö Æ¼¼ÅÃ÷','15210002',95,'0110','12000',sysdate);
insert into product values(product_seq.nextVal,'³²¼º Èò»ö Æ¼¼ÅÃ÷','15210005',100,'0110','8000',sysdate);
insert into product values(product_seq.nextVal,'³²¼º º¸¶ó»ö ¼ÅÃ÷','15110003',105,'0110','16000',sysdate);
insert into product values(product_seq.nextVal,'³²¼º °ËÀº»ö ¹ÙÁö','15110004',95,'0110','19000',sysdate);

insert into product values(product_seq.nextVal,'¿©¼º Èò»ö ÀÚÄÏ','15120001',95,'0110','13000',sysdate);
insert into product values(product_seq.nextVal,'¿©¼º Ã» º£½ºÆ®','15120002',95,'0110','11000',sysdate);
insert into product values(product_seq.nextVal,'¿©¼º Èò»ö Æ¼¼ÅÃ÷','15120003',95,'0110','10000',sysdate);
insert into product values(product_seq.nextVal,'¿©¼º ºÐÈ«ºÐÈ« ¼ÅÃ÷','15120005',95,'0110','13000',sysdate);
insert into product values(product_seq.nextVal,'¿©¼º ºÐÈ« ¹ÙÁö','15120004',95,'0110','19000',sysdate);

insert into product values(product_seq.nextVal,'¾Æ±â µðÁö¸ó ÀÚÄÏ','15130001',95,'0110','19000',sysdate);
insert into product values(product_seq.nextVal,'¾Æ±â »Ç·Î·Î Æ¼¼ÅÃ÷','15130002',95,'0110','8500',sysdate);
insert into product values(product_seq.nextVal,'¾Æ±â ÄÚÄÚ¸ù ¹ÙÁö','15130003',95,'0110','23000',sysdate);
insert into product values(product_seq.nextVal,'¾Æ±â °ø·æ¿Ê','15130004',95,'0110','22000',sysdate);
insert into product values(product_seq.nextVal,'¾Æ±â ÇÇÄ«Ãò¿Ê','15130005',95,'0110','25000',sysdate);=======
increment by 1 start with 1;

--05.23staff ¼öÁ¤
alter table staff MODIFY  staff_position number(10);
alter table staff add(staff_id varchar(30) constraint staff_staff_id_uq unique);
alter table staff add(staff_pwd varchar(30));>>>>>>> .r218
