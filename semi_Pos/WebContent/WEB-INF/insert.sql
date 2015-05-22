--bonsa insert 이건 하나만
insert into bonsa values(
bonsa_seq.nextval,'박대리',
'admin','1234','대리',
'010-5017-3854',sysdate);



--shop insert 애는  test 숫자 늘려가면서 넣어줘 004 써진 부분도 숫자 하나씩 증가하면서 넣어줘
insert into shop values(
shop_seq.nextval,'판교점'
,'032-234-1231','판교',0,0,sysdate,
'test@naver.com','옷팔아',
'imagie.img',004,1,'test','1234'
);


--mem insert
insert into member values(
member_seq.nextval,'test','010-1234-1234','764-1234',
'성남시 주소 넣어줘','상세주소 넣어줘',0,sysdate,1,'email넣어줘');

commit;