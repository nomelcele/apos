--bonsa insert �̰� �ϳ���
insert into bonsa values(
bonsa_seq.nextval,'�ڴ븮',
'admin','1234','�븮',
'010-5017-3854',sysdate);



--shop insert �ִ�  test ���� �÷����鼭 �־��� 004 ���� �κе� ���� �ϳ��� �����ϸ鼭 �־���
insert into shop values(
shop_seq.nextval,'�Ǳ���'
,'032-234-1231','�Ǳ�',0,0,sysdate,
'test@naver.com','���Ⱦ�',
'imagie.img',004,1,'test','1234'
);


--mem insert
insert into member values(
member_seq.nextval,'test','010-1234-1234','764-1234',
'������ �ּ� �־���','���ּ� �־���',0,sysdate,1,'email�־���');

commit;