


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
insert into member values(member_seq.nextval,'도하진','010-1234-1234','746-2467','성남시 북구','북구 수성동',0,sysdate,1,'r213333@naver.com');
insert into member values(member_seq.nextval,'윤홍순','010-7367-2745','474-1234','서울시 동구','동구 동명동',0,sysdate,1,'lifeveril@naver.com');
insert into member values(member_seq.nextval,'한광호','010-5478-5463','346-1234','경남시 서구','서구 우산동',0,sysdate,1,'ama949@naver.com');
insert into member values(member_seq.nextval,'윤성현','010-3879-4684','347-3456','경북시 광산구','광산구 두암동',0,sysdate,1,'lifeveril@naver.com');
insert into member values(member_seq.nextval,'박경순','010-4548-7564','064-5463','전남 여수시','그냥 미평동',0,sysdate,1,'phoenixcrash@naver.com');

insert into member values(member_seq.nextval,'구준표','010-1234-1234','746-2467','성남시 북구','북구 수성동',0,sysdate,1,'r213333@naver.com');
insert into member values(member_seq.nextval,'김형준','010-7367-2745','474-1234','서울시 동구','동구 동명동',0,sysdate,1,'lifeveril@naver.com');
insert into member values(member_seq.nextval,'구혜선','010-5478-5463','346-1234','경남시 서구','서구 우산동',0,sysdate,1,'ama949@naver.com');
insert into member values(member_seq.nextval,'김구라','010-3879-4684','347-3456','경북시 광산구','광산구 두암동',0,sysdate,1,'lifeveril@naver.com');
insert into member values(member_seq.nextval,'안소희','010-4548-7564','064-5463','전남 여수시','그냥 미평동',0,sysdate,1,'phoenixcrash@naver.com');

insert into member values(member_seq.nextval,'이나영','010-1234-1234','746-2467','성남시 북구','북구 수성동',0,sysdate,1,'r213333@naver.com');
insert into member values(member_seq.nextval,'장기하','010-7367-2745','474-1234','서울시 동구','동구 동명동',0,sysdate,1,'lifeveril@naver.com');
insert into member values(member_seq.nextval,'정형돈','010-5478-5463','346-1234','경남시 서구','서구 우산동',0,sysdate,1,'ama949@naver.com');
insert into member values(member_seq.nextval,'한채영','010-3879-4684','347-3456','경북시 광산구','광산구 두암동',0,sysdate,1,'lifeveril@naver.com');
insert into member values(member_seq.nextval,'이수지','010-4548-7564','064-5463','전남 여수시','그냥 미평동',0,sysdate,1,'phoenixcrash@naver.com');

insert into member values(member_seq.nextval,'이승기','010-1234-1234','746-2467','성남시 북구','북구 수성동',0,sysdate,1,'r213333@naver.com');
insert into member values(member_seq.nextval,'백지영','010-7367-2745','474-1234','서울시 동구','동구 동명동',0,sysdate,1,'lifeveril@naver.com');
insert into member values(member_seq.nextval,'박혜선','010-5478-5463','346-1234','경남시 서구','서구 우산동',0,sysdate,1,'ama949@naver.com');
insert into member values(member_seq.nextval,'민경훈','010-3879-4684','347-3456','경북시 광산구','광산구 두암동',0,sysdate,1,'lifeveril@naver.com');
insert into member values(member_seq.nextval,'김동률','010-4548-7564','064-5463','전남 여수시','그냥 미평동',0,sysdate,1,'phoenixcrash@naver.com');

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

-- stock 인서트 문
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
-- 대리점 1호, 여성옷 1호 80사이즈 재고 0개
insert into stock values(stock_seq.nextval,'1512119001',32,1,75);
insert into stock values(stock_seq.nextval,'1512119001',0,1,80);
insert into stock values(stock_seq.nextval,'1512119001',26,1,85);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1512119001',33,2,75);
insert into stock values(stock_seq.nextval,'1512119001',54,2,80);
insert into stock values(stock_seq.nextval,'1512119001',40,2,85);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1512119001',43,3,75);
insert into stock values(stock_seq.nextval,'1512119001',22,3,80);
insert into stock values(stock_seq.nextval,'1512119001',38,3,85);


-- 대리점 1호, 아기옷 1호
-- 대리점 1호, 아기옷 1호 7사이즈 재고 0개
insert into stock values(stock_seq.nextval,'1523103001',37,1,6);
insert into stock values(stock_seq.nextval,'1523103001',0,1,7);
insert into stock values(stock_seq.nextval,'1523103001',62,1,8);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1523103001',17,2,6);
insert into stock values(stock_seq.nextval,'1523103001',24,2,7);
insert into stock values(stock_seq.nextval,'1523103001',82,2,8);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1523103001',27,3,6);
insert into stock values(stock_seq.nextval,'1523103001',54,3,7);
insert into stock values(stock_seq.nextval,'1523103001',35,3,8);





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
-- 대리점 1호 
insert into stock values(stock_seq.nextval,'1541115002',32,1,75);
insert into stock values(stock_seq.nextval,'1541115002',54,1,80);
insert into stock values(stock_seq.nextval,'1541115002',32,1,85);

-- 대리점 2호, 여성옷 2호 80사이즈 재고 0개
insert into stock values(stock_seq.nextval,'1541115002',33,2,75);
insert into stock values(stock_seq.nextval,'1541115002',0,2,80);
insert into stock values(stock_seq.nextval,'1541115002',32,2,85);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1541115002',43,3,75);
insert into stock values(stock_seq.nextval,'1541115002',22,3,80);
insert into stock values(stock_seq.nextval,'1541115002',32,3,85);


-- 대리점 1호, 아기옷 2호
-- 대리점 1호, 아기옷 2호 6사이즈 재고 0개
insert into stock values(stock_seq.nextval,'1513104002',0,1,6);
insert into stock values(stock_seq.nextval,'1513104002',34,1,7);
insert into stock values(stock_seq.nextval,'1513104002',62,1,8);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1513104002',17,2,6);
insert into stock values(stock_seq.nextval,'1513104002',24,2,7);
insert into stock values(stock_seq.nextval,'1513104002',82,2,8);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1513104002',27,3,6);
insert into stock values(stock_seq.nextval,'1513104002',54,3,7);
insert into stock values(stock_seq.nextval,'1513104002',35,3,8);




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
insert into stock values(stock_seq.nextval,'1532115003',32,1,75);
insert into stock values(stock_seq.nextval,'1532115003',54,1,80);
insert into stock values(stock_seq.nextval,'1532115003',54,1,85);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1532115003',33,2,75);
insert into stock values(stock_seq.nextval,'1532115003',54,2,80);
insert into stock values(stock_seq.nextval,'1532115003',54,2,85);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1532115003',43,3,75);
insert into stock values(stock_seq.nextval,'1532115003',22,3,80);
insert into stock values(stock_seq.nextval,'1532115003',54,3,85);


-- 대리점 1호, 아기옷 3호
insert into stock values(stock_seq.nextval,'1523101003',37,1,6);
insert into stock values(stock_seq.nextval,'1523101003',34,1,7);
insert into stock values(stock_seq.nextval,'1523101003',62,1,8);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1523101003',17,2,6);
insert into stock values(stock_seq.nextval,'1523101003',24,2,7);
insert into stock values(stock_seq.nextval,'1523101003',82,2,8);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1523101003',27,3,6);
insert into stock values(stock_seq.nextval,'1523101003',54,3,7);
insert into stock values(stock_seq.nextval,'1523101003',35,3,8);



-- 추가
-- 대리점 1호, 남성옷 4호
insert into stock values(stock_seq.nextval,'1522115004',50,1,28);
insert into stock values(stock_seq.nextval,'1522115004',20,1,30);
insert into stock values(stock_seq.nextval,'1522115004',25,1,32);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1522115004',63,2,28);
insert into stock values(stock_seq.nextval,'1522115004',14,2,30);
insert into stock values(stock_seq.nextval,'1522115004',58,2,32);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1522115004',43,3,28);
insert into stock values(stock_seq.nextval,'1522115004',32,3,30);
insert into stock values(stock_seq.nextval,'1522115004',85,3,32);


-- 대리점 1호, 여성옷 4호
insert into stock values(stock_seq.nextval,'1532110004',32,1,75);
insert into stock values(stock_seq.nextval,'1532110004',54,1,80);
insert into stock values(stock_seq.nextval,'1532110004',32,1,85);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1532110004',33,2,75);
insert into stock values(stock_seq.nextval,'1532110004',54,2,80);
insert into stock values(stock_seq.nextval,'1532110004',32,2,85);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1532110004',43,3,75);
insert into stock values(stock_seq.nextval,'1532110004',22,3,80);
insert into stock values(stock_seq.nextval,'1532110004',32,3,85);



-- 대리점 1호, 아기옷 4호
insert into stock values(stock_seq.nextval,'1543211004',37,1,6);
insert into stock values(stock_seq.nextval,'1543211004',34,1,7);
insert into stock values(stock_seq.nextval,'1543211004',62,1,8);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1543211004',17,2,6);
insert into stock values(stock_seq.nextval,'1543211004',24,2,7);
insert into stock values(stock_seq.nextval,'1543211004',82,2,8);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1543211004',27,3,6);
insert into stock values(stock_seq.nextval,'1543211004',54,3,7);
insert into stock values(stock_seq.nextval,'1543211004',35,3,8);



-- 대리점 1호, 남성옷 5호
insert into stock values(stock_seq.nextval,'1511215005',50,1,28);
insert into stock values(stock_seq.nextval,'1511215005',20,1,30);
insert into stock values(stock_seq.nextval,'1511215005',25,1,32);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1511215005',63,2,28);
insert into stock values(stock_seq.nextval,'1511215005',14,2,30);
insert into stock values(stock_seq.nextval,'1511215005',58,2,32);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1511215005',43,3,28);
insert into stock values(stock_seq.nextval,'1511215005',32,3,30);
insert into stock values(stock_seq.nextval,'1511215005',85,3,32);



-- 대리점 1호, 여성옷 5호
insert into stock values(stock_seq.nextval,'1542210005',32,1,75);
insert into stock values(stock_seq.nextval,'1542210005',54,1,80);
insert into stock values(stock_seq.nextval,'1542210005',32,1,85);

-- 대리점 2호
insert into stock values(stock_seq.nextval,'1542210005',33,2,75);
insert into stock values(stock_seq.nextval,'1542210005',54,2,80);
insert into stock values(stock_seq.nextval,'1542210005',32,2,85);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1542210005',43,3,75);
insert into stock values(stock_seq.nextval,'1542210005',22,3,80);
insert into stock values(stock_seq.nextval,'1542210005',32,3,85);



-- 대리점 1호, 아기옷 5호
insert into stock values(stock_seq.nextval,'1533104005',37,1,6);
insert into stock values(stock_seq.nextval,'1533104005',34,1,7);
insert into stock values(stock_seq.nextval,'1533104005',62,1,8);


-- 대리점 2호
insert into stock values(stock_seq.nextval,'1533104005',17,2,6);
insert into stock values(stock_seq.nextval,'1533104005',24,2,7);
insert into stock values(stock_seq.nextval,'1533104005',82,2,8);

-- 대리점 3호
insert into stock values(stock_seq.nextval,'1533104005',27,3,6);
insert into stock values(stock_seq.nextval,'1533104005',54,3,7);
insert into stock values(stock_seq.nextval,'1533104005',35,3,8);


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
insert into grade values('bon_admin', 'bonsa');

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
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 2, 15, '2015-01-29', 1, 1 ,85);
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

------------------------------------------------------------
-----sell 3 : 수지점

insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 3, 1, '2015-01-01', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 3, 1, '2015-01-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 3, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 37000, 0, 3, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 3, 1, '2015-03-13', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 3, 1, '2015-03-05', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 3, 1, '2015-03-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 3, 1, '2015-03-14', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 3, 1, '2015-02-26', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 3, 1, '2015-03-16', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 3, 1, '2015-06-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 3, 1, '2015-06-19', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 3, 1, '2015-06-19', 1, 1 ,75);
------------------------------------------------------------- memnum 22일 때 시작 : 아기옷, 사이즈 6 

insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 3, 2, '2015-01-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 3, 2, '2015-01-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 3, 2, '2015-01-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 3, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 3, 2, '2015-03-12', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 3, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 3, 2, '2015-03-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 3, 2, '2015-01-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 3, 2, '2015-01-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 3, 2, '2015-02-11', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 3, 2, '2015-03-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 3, 2, '2015-06-27', 1, 1 ,6);

------------------------------------------------------------- memnum 23일 때 시작 : 남자옷, 사이즈 105 , 30

insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 3, 3, '2015-01-03', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 3, 3, '2015-01-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 3, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 3, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 3, 3, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 3, 3, '2015-03-18', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 3, 3, '2015-04-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 3, 3, '2015-03-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 3, 3, '2015-05-05', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 3, 3, '2015-01-16', 1, 1 ,105);


------------------------------------------------------------- memnum 4일 때 시작 : 남자옷, 사이즈 95 , 28
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 3, 4, '2015-01-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 3, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 3, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 3, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 3, 4, '2015-03-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 3, 4, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 3, 4, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 3, 4, '2015-04-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 3, 4, '2015-05-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 3, 4, '2015-03-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 3, 4, '2015-03-24', 1, 1 ,95);


------------------------------------------------------------- memnum 5일 때 시작 : 여자옷, 사이즈 80 , 27  ,아기옷 :사이즈 8 
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 3, 5, '2015-01-05', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 3, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 3, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 3, 5, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 3, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 3, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 3, 5, '2015-03-09', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 3, 5, '2015-04-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 3, 5, '2015-04-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 3, 5, '2015-04-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 3, 5, '2015-02-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 3, 5, '2015-01-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 3, 5, '2015-02-26', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 3, 5, '2015-01-26', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 3, 5, '2015-02-26', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 3, 5, '2015-01-19', 1, 1 ,80);
------------------------------------------------------------- memnum 6일 때 시작 : 남자, 105, 32


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 3, 6, '2015-01-06', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 3, 6, '2015-02-16', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 3, 6, '2015-02-16', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 3, 6, '2015-03-05', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 3, 6, '2015-04-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 3, 6, '2015-04-23', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 3, 6, '2015-05-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 3, 6, '2015-06-05', 1, 1 ,32);


------------------------------------------------------------- memnum 7일 때 시작 : 남자, 95, 28 아기옷 : 7


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 3, 7, '2015-01-07', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 3, 7, '2015-02-02', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 3, 7, '2015-02-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 3, 7, '2015-02-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 3, 7, '2015-03-03', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 3, 7, '2015-03-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 3, 7, '2015-02-09', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 3, 7, '2015-04-13', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 3, 7, '2015-01-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 3, 7, '2015-03-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 3, 7, '2015-02-11', 1, 1 ,7);

------------------------------------------------------------- memnum 8일 때 시작 : 여, 85, 29



insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 3, 8, '2015-01-13', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 3, 8, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 3, 8, '2015-01-26', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 3, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 8, '2015-03-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 3, 8, '2015-04-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 3, 8, '2015-05-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 3, 8, '2015-03-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 8, '2015-03-03', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 3, 8, '2015-02-19', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 3, 8, '2015-04-25', 1, 1 ,85);


------------------------------------------------------------- memnum 9 일 때 시작 : 남자, 100, 30


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 3, 9, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 3, 9, '2015-01-05', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 3, 9, '2015-01-27', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 3, 9, '2015-02-21', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 3, 9, '2015-02-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 3, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 3, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 3, 9, '2015-04-14', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 3, 9, '2015-03-14', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 3, 9, '2015-02-17', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 3, 9, '2015-01-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 3, 9, '2015-01-01', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 3, 9, '2015-01-29', 1, 1 ,100);


------------------------------------------------------------- memnum 10일 때 시작 : 여, 75, 25


insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 10, '2015-01-27', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 3, 10, '2015-02-05', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 3, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 3, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 3, 10, '2015-03-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 3, 10, '2015-04-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 10, '2015-04-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 10, '2015-04-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 10, '2015-01-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 3, 10, '2015-02-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 10, '2015-03-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 10, '2015-02-16', 1, 1 ,75);


------------------------------------------------------------- memnum 11일 때 시작 : 여, 75, 25 아기옷 8

insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 11, '2015-01-13', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 3, 11, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 3, 11, '2015-03-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 3, 11, '2015-03-11', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 3, 11, '2015-03-29', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 3, 11, '2015-04-03', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 3, 11, '2015-04-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 3, 11, '2015-04-28', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 3, 11, '2015-05-28', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 3, 11, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 3, 11, '2015-02-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 3, 11, '2015-03-14', 1, 1 ,8);

------------------------------------------------------------- memnum 12 일 때 시작 : 남자, 100, 28
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 3, 12, '2015-01-11', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 3, 12, '2015-01-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 3, 12, '2015-01-22', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 3, 12, '2015-02-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 3, 12, '2015-02-19', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 3, 12, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 3, 12, '2015-03-07', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 3, 12, '2015-03-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 3, 12, '2015-03-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 3, 12, '2015-04-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 3, 12, '2015-02-02', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 3, 12, '2015-02-09', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 3, 12, '2015-03-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 3, 12, '2015-01-26', 1, 1 ,28);



------------------------------------------------------------- memnum 13일 때 시작 : 여, 80, 25 

insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 3, 13, '2015-01-07', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 3, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 3, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 13, '2015-03-08', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 3, 13, '2015-03-08', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 3, 13, '2015-03-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 13, '2015-04-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 3, 13, '2015-04-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 3, 13, '2015-05-06', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 3, 13, '2015-05-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 13, '2015-05-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 3, 13, '2015-06-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 13, '2015-01-26', 1, 1 ,80);

------------------------------------------------------------- memnum 14일 때 시작 : 여, 85, 29


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 3, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 3, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 14, '2015-02-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 3, 14, '2015-02-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 14, '2015-03-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 3, 14, '2015-03-28', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 3, 14, '2015-01-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 14, '2015-02-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 3, 13, '2015-02-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 3, 14, '2015-03-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 3, 14, '2015-06-29', 1, 1 ,29);

------------------------------------------------------------- memnum 15일 때 시작 : 여, 80, 25  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 3, 15, '2015-01-29', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 3, 15, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 3, 15, '2015-02-16', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 3, 15, '2015-03-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 3, 15, '2015-03-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 15, '2015-03-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 3, 15, '2015-04-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 3, 15, '2015-01-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 3, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 3, 15, '2015-03-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 3, 15, '2015-02-05', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 15, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 3, 15, '2015-01-27', 1, 1 ,6);


------------------------------------------------------------- memnum 16일 때 시작 : 남 , 100, 30  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 3, 16, '2015-01-13', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 3, 16, '2015-01-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 3, 16, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 3, 16, '2015-03-16', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 3, 16, '2015-03-26', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 3, 16, '2015-04-24', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 3, 16, '2015-05-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 3, 16, '2015-05-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 3, 16, '2015-01-08', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 3, 16, '2015-02-17', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 3, 16, '2015-01-17', 1, 1 ,6);

------------------------------------------------------------- memnum 17일 때 시작 : 여, 85, 27  아기옷 : 7



insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 3, 17, '2015-01-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 3, 17, '2015-02-10', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 3, 17, '2015-03-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 3, 17, '2015-03-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 3, 17, '2015-03-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 3, 17, '2015-04-22', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 3, 17, '2015-04-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 17, '2015-05-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 3, 17, '2015-05-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 3, 17, '2015-05-19', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 17, '2015-01-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 3, 17, '2015-02-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 3, 17, '2015-03-20', 1, 1 ,7);


------------------------------------------------------------- memnum 18일 때 시작 : 여, 80, 27


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 3, 18, '2015-01-22', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 3, 18, '2015-02-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 3, 18, '2015-03-17', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 3, 18, '2015-04-24', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 3, 18, '2015-05-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 3, 18, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 3, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 3, 18, '2015-02-23', 1, 1 ,27);


------------------------------------------------------------- memnum 19일 때 시작 : 남 105 , 32 아기옷 7

insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 3, 19, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 3, 19, '2015-01-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 3, 19, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 3, 19, '2015-02-14', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 3, 19, '2015-03-17', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 3, 19, '2015-03-26', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 3, 19, '2015-03-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 3, 19, '2015-04-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 3, 19, '2015-04-21', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 3, 19, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 3, 19, '2015-03-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 3, 19, '2015-02-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 3, 19, '2015-03-11', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 3, 19, '2015-01-11', 1, 1 ,7);


------------------------------------------------------------- memnum 40일 때 시작 : 남 95, 28


insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 3, 20, '2015-01-08', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 3, 20, '2015-01-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 3, 20, '2015-01-19', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 3, 20, '2015-02-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 3, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 3, 20, '2015-03-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 3, 20, '2015-03-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 3, 20, '2015-04-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 3, 20, '2015-04-21', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 3, 20, '2015-04-29', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 3, 20, '2015-05-22', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 3, 20, '2015-06-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 3, 20, '2015-01-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 3, 20, '2015-01-19', 1, 1 ,8);


------------------------------------------------------------
---sell 4 : 성남점

insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 4, 1, '2015-01-01', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 4, 1, '2015-05-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 4, 1, '2015-05-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 37000, 0, 4, 1, '2015-05-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 4, 1, '2015-06-13', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 4, 1, '2015-06-05', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 4, 1, '2015-06-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 4, 1, '2015-05-14', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 4, 1, '2015-05-26', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 4, 1, '2015-06-16', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 4, 1, '2015-05-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 4, 1, '2015-06-19', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 4, 1, '2015-06-19', 1, 1 ,75);
------------------------------------------------------------- memnum 22일 때 시작 : 아기옷, 사이즈 6 

insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 4, 2, '2015-01-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 4, 2, '2015-01-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 4, 2, '2015-05-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 4, 2, '2015-05-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 4, 2, '2015-03-12', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 4, 2, '2015-05-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 4, 2, '2015-05-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 4, 2, '2015-06-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 4, 2, '2015-06-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 4, 2, '2015-05-11', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 4, 2, '2015-06-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 4, 2, '2015-06-27', 1, 1 ,6);

------------------------------------------------------------- memnum 23일 때 시작 : 남자옷, 사이즈 105 , 30

insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 4, 3, '2015-05-03', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 4, 3, '2015-05-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 4, 3, '2015-05-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 4, 3, '2015-06-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 4, 3, '2015-06-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 4, 3, '2015-05-18', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 4, 3, '2015-06-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 4, 3, '2015-05-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 4, 3, '2015-06-05', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 4, 3, '2015-06-16', 1, 1 ,105);


------------------------------------------------------------- memnum 4일 때 시작 : 남자옷, 사이즈 95 , 28
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 4, 4, '2015-01-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 4, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 4, 4, '2015-05-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 4, 4, '2015-06-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 4, 4, '2015-06-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 4, 4, '2015-05-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 4, 4, '2015-05-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 4, 4, '2015-06-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 4, 4, '2015-06-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 4, 4, '2015-05-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 4, 4, '2015-06-24', 1, 1 ,95);


------------------------------------------------------------- memnum 5일 때 시작 : 여자옷, 사이즈 80 , 27  ,아기옷 :사이즈 8 
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 4, 5, '2015-06-05', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 4, 5, '2015-06-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 4, 5, '2015-05-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 4, 5, '2015-06-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 4, 5, '2015-05-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 4, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 4, 5, '2015-06-09', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 4, 5, '2015-05-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 4, 5, '2015-05-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 4, 5, '2015-04-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 4, 5, '2015-06-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 4, 5, '2015-06-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 4, 5, '2015-06-26', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 4, 5, '2015-06-26', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 4, 5, '2015-02-26', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 4, 5, '2015-01-19', 1, 1 ,80);
------------------------------------------------------------- memnum 6일 때 시작 : 남자, 105, 32


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 4, 6, '2015-01-06', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 4, 6, '2015-06-16', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 4, 6, '2015-06-16', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 4, 6, '2015-05-05', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 4, 6, '2015-05-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 4, 6, '2015-06-23', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 4, 6, '2015-06-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 4, 6, '2015-06-05', 1, 1 ,32);


------------------------------------------------------------- memnum 7일 때 시작 : 남자, 95, 28 아기옷 : 7


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 4, 7, '2015-01-07', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 4, 7, '2015-05-02', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 4, 7, '2015-02-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 4, 7, '2015-05-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 4, 7, '2015-03-03', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 4, 7, '2015-03-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 4, 7, '2015-06-09', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 4, 7, '2015-06-13', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 4, 7, '2015-06-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 4, 7, '2015-05-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 4, 7, '2015-02-11', 1, 1 ,7);

------------------------------------------------------------- memnum 8일 때 시작 : 여, 85, 29



insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 4, 8, '2015-05-13', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 4, 8, '2015-06-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 4, 8, '2015-06-26', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 4, 8, '2015-06-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 8, '2015-06-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 4, 8, '2015-05-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 4, 8, '2015-05-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 4, 8, '2015-06-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 8, '2015-06-03', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 4, 8, '2015-06-19', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 4, 8, '2015-05-25', 1, 1 ,85);


------------------------------------------------------------- memnum 9 일 때 시작 : 남자, 100, 30


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 4, 9, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 4, 9, '2015-01-05', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 4, 9, '2015-06-27', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 4, 9, '2015-06-21', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 4, 9, '2015-06-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 4, 9, '2015-05-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 4, 9, '2015-06-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 4, 9, '2015-05-14', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 4, 9, '2015-06-14', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 4, 9, '2015-05-17', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 4, 9, '2015-06-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 4, 9, '2015-05-01', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 4, 9, '2015-06-29', 1, 1 ,100);


------------------------------------------------------------- memnum 10일 때 시작 : 여, 75, 25


insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 10, '2015-05-27', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 4, 10, '2015-05-05', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 4, 10, '2015-05-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 4, 10, '2015-06-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 4, 10, '2015-03-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 4, 10, '2015-06-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 10, '2015-05-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 10, '2015-06-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 10, '2015-05-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 4, 10, '2015-06-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 10, '2015-05-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 10, '2015-02-16', 1, 1 ,75);


------------------------------------------------------------- memnum 11일 때 시작 : 여, 75, 25 아기옷 8

insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 11, '2015-01-13', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 4, 11, '2015-05-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 4, 11, '2015-03-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 4, 11, '2015-06-11', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 4, 11, '2015-05-29', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 4, 11, '2015-06-03', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 4, 11, '2015-05-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 4, 11, '2015-06-28', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 4, 11, '2015-06-28', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 4, 11, '2015-05-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 4, 11, '2015-05-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 4, 11, '2015-06-14', 1, 1 ,8);

------------------------------------------------------------- memnum 12 일 때 시작 : 남자, 100, 28
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 4, 12, '2015-06-11', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 4, 12, '2015-01-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 4, 12, '2015-06-22', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 4, 12, '2015-05-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 4, 12, '2015-05-19', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 4, 12, '2015-05-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 4, 12, '2015-05-07', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 4, 12, '2015-03-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 4, 12, '2015-06-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 4, 12, '2015-06-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 4, 12, '2015-06-02', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 4, 12, '2015-06-09', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 4, 12, '2015-05-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 4, 12, '2015-05-26', 1, 1 ,28);



------------------------------------------------------------- memnum 13일 때 시작 : 여, 80, 25 

insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 4, 13, '2015-01-07', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 4, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 4, 13, '2015-06-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 13, '2015-06-08', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 4, 13, '2015-06-08', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 4, 13, '2015-05-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 13, '2015-06-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 4, 13, '2015-05-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 4, 13, '2015-06-06', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 4, 13, '2015-05-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 13, '2015-06-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 4, 13, '2015-05-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 13, '2015-06-26', 1, 1 ,80);

------------------------------------------------------------- memnum 14일 때 시작 : 여, 85, 29


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 4, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 4, 14, '2015-06-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 14, '2015-05-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 4, 14, '2015-05-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 14, '2015-06-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 4, 14, '2015-05-28', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 4, 14, '2015-06-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 14, '2015-05-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 4, 13, '2015-06-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 4, 14, '2015-03-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 4, 14, '2015-06-29', 1, 1 ,29);

------------------------------------------------------------- memnum 15일 때 시작 : 여, 80, 25  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 4, 15, '2015-01-29', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 15, '2015-06-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 4, 15, '2015-06-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 4, 15, '2015-06-16', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 4, 15, '2015-05-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 4, 15, '2015-06-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 15, '2015-06-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 4, 15, '2015-06-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 4, 15, '2015-05-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 4, 15, '2015-06-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 4, 15, '2015-03-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 4, 15, '2015-05-05', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 15, '2015-06-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 4, 15, '2015-05-27', 1, 1 ,6);


------------------------------------------------------------- memnum 16일 때 시작 : 남 , 100, 30  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 4, 16, '2015-01-13', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 4, 16, '2015-06-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 4, 16, '2015-06-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 4, 16, '2015-05-16', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 4, 16, '2015-05-26', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 4, 16, '2015-05-24', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 4, 16, '2015-05-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 4, 16, '2015-05-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 4, 16, '2015-06-08', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 4, 16, '2015-06-17', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 4, 16, '2015-05-17', 1, 1 ,6);

------------------------------------------------------------- memnum 17일 때 시작 : 여, 85, 27  아기옷 : 7



insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 4, 17, '2015-01-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 4, 17, '2015-02-10', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 4, 17, '2015-05-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 4, 17, '2015-06-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 4, 17, '2015-03-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 4, 17, '2015-06-22', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 4, 17, '2015-05-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 17, '2015-05-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 4, 17, '2015-05-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 4, 17, '2015-05-19', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 17, '2015-06-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 4, 17, '2015-06-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 4, 17, '2015-03-20', 1, 1 ,7);


------------------------------------------------------------- memnum 18일 때 시작 : 여, 80, 27


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 4, 18, '2015-01-22', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 4, 18, '2015-06-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 4, 18, '2015-06-17', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 4, 18, '2015-06-24', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 4, 18, '2015-05-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 4, 18, '2015-05-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 4, 18, '2015-05-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 4, 18, '2015-06-23', 1, 1 ,27);


------------------------------------------------------------- memnum 19일 때 시작 : 남 105 , 32 아기옷 7

insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 4, 19, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 4, 19, '2015-06-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 4, 19, '2015-06-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 4, 19, '2015-06-14', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 4, 19, '2015-03-17', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 4, 19, '2015-06-26', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 4, 19, '2015-03-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 4, 19, '2015-05-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 4, 19, '2015-06-21', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 4, 19, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 4, 19, '2015-06-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 4, 19, '2015-06-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 4, 19, '2015-06-11', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 4, 19, '2015-05-11', 1, 1 ,7);


------------------------------------------------------------- memnum 40일 때 시작 : 남 95, 28


insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 4, 20, '2015-01-08', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 4, 20, '2015-01-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 4, 20, '2015-01-19', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 4, 20, '2015-06-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 4, 20, '2015-06-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 4, 20, '2015-06-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 4, 20, '2015-06-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 4, 20, '2015-06-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 4, 20, '2015-06-21', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 4, 20, '2015-05-29', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 4, 20, '2015-06-22', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 4, 20, '2015-06-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 4, 20, '2015-06-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 4, 20, '2015-05-19', 1, 1 ,8);




------------------------------------------------------------
---sell 5 : 부산점

insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 5, 1, '2015-01-01', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 5, 1, '2015-01-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 5, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 37000, 0, 5, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 5, 1, '2015-01-13', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 5, 1, '2015-01-05', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 5, 1, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 5, 1, '2015-01-14', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 5, 1, '2015-01-26', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 5, 1, '2015-01-16', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 5, 1, '2015-01-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 5, 1, '2015-01-19', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 5, 1, '2015-01-19', 1, 1 ,75);
------------------------------------------------------------- memnum 22일 때 시작 : 아기옷, 사이즈 6 

insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 5, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 5, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 5, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 5, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 5, 2, '2015-02-12', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 5, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 5, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 5, 2, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 5, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 5, 2, '2015-02-11', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 5, 2, '2015-02-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 5, 2, '2015-02-27', 1, 1 ,6);

------------------------------------------------------------- memnum 23일 때 시작 : 남자옷, 사이즈 105 , 30

insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 5, 3, '2015-01-03', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 5, 3, '2015-01-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 5, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 5, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 5, 3, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 5, 3, '2015-03-18', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 5, 3, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 5, 3, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 5, 3, '2015-02-05', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 5, 3, '2015-02-16', 1, 1 ,105);


------------------------------------------------------------- memnum 4일 때 시작 : 남자옷, 사이즈 95 , 28
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 5, 4, '2015-01-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 5, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 5, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 5, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 5, 4, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 5, 4, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 5, 4, '2015-02-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 5, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 5, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 5, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 5, 4, '2015-01-24', 1, 1 ,95);


------------------------------------------------------------- memnum 5일 때 시작 : 여자옷, 사이즈 80 , 27  ,아기옷 :사이즈 8 
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 5, 5, '2015-01-05', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 5, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 5, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 5, 5, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 5, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 5, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 5, 5, '2015-01-09', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 5, 5, '2015-01-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 5, 5, '2015-01-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 5, 5, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 5, 5, '2015-02-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 5, 5, '2015-01-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 5, 5, '2015-02-26', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 5, 5, '2015-01-26', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 5, 5, '2015-02-26', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 5, 5, '2015-01-19', 1, 1 ,80);
------------------------------------------------------------- memnum 6일 때 시작 : 남자, 105, 32


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 5, 6, '2015-01-06', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 5, 6, '2015-02-16', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 5, 6, '2015-02-16', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 5, 6, '2015-03-05', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 5, 6, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 5, 6, '2015-02-23', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 5, 6, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 5, 6, '2015-02-05', 1, 1 ,32);


------------------------------------------------------------- memnum 7일 때 시작 : 남자, 95, 28 아기옷 : 7


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 5, 7, '2015-01-07', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 5, 7, '2015-02-02', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 5, 7, '2015-02-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 5, 7, '2015-02-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 5, 7, '2015-02-03', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 5, 7, '2015-02-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 5, 7, '2015-02-09', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 5, 7, '2015-04-13', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 5, 7, '2015-01-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 5, 7, '2015-03-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 5, 7, '2015-02-11', 1, 1 ,7);

------------------------------------------------------------- memnum 8일 때 시작 : 여, 85, 29



insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 5, 8, '2015-01-13', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 5, 8, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 5, 8, '2015-01-26', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 5, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 8, '2015-01-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 5, 8, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 5, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 5, 8, '2015-03-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 8, '2015-03-03', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 5, 8, '2015-02-19', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 5, 8, '2015-06-25', 1, 1 ,85);


------------------------------------------------------------- memnum 9 일 때 시작 : 남자, 100, 30


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 5, 9, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 5, 9, '2015-01-05', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 5, 9, '2015-01-27', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 5, 9, '2015-02-21', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 5, 9, '2015-02-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 5, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 5, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 5, 9, '2015-01-14', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 5, 9, '2015-01-14', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 5, 9, '2015-01-17', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 5, 9, '2015-01-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 5, 9, '2015-01-01', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 5, 9, '2015-01-29', 1, 1 ,100);


------------------------------------------------------------- memnum 10일 때 시작 : 여, 75, 25


insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 10, '2015-01-27', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 5, 10, '2015-02-05', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 5, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 5, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 5, 10, '2015-02-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 5, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 10, '2015-01-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 10, '2015-01-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 5, 10, '2015-02-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 10, '2015-02-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 10, '2015-02-16', 1, 1 ,75);


------------------------------------------------------------- memnum 11일 때 시작 : 여, 75, 25 아기옷 8

insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 11, '2015-01-13', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 5, 11, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 5, 11, '2015-03-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 5, 11, '2015-03-11', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 5, 11, '2015-03-29', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 5, 11, '2015-01-03', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 5, 11, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 5, 11, '2015-01-28', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 5, 11, '2015-01-28', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 5, 11, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 5, 11, '2015-02-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 5, 11, '2015-02-14', 1, 1 ,8);

------------------------------------------------------------- memnum 12 일 때 시작 : 남자, 100, 28
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 5, 12, '2015-01-11', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 5, 12, '2015-01-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 5, 12, '2015-01-22', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 5, 12, '2015-02-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 5, 12, '2015-02-19', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 5, 12, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 5, 12, '2015-01-07', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 5, 12, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 5, 12, '2015-01-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 5, 12, '2015-01-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 5, 12, '2015-01-02', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 5, 12, '2015-02-09', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 5, 12, '2015-02-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 5, 12, '2015-01-26', 1, 1 ,28);



------------------------------------------------------------- memnum 13일 때 시작 : 여, 80, 25 

insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 5, 13, '2015-01-07', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 5, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 5, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 13, '2015-01-08', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 5, 13, '2015-01-08', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 5, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 5, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 5, 13, '2015-02-06', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 5, 13, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 13, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 5, 13, '2015-06-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 13, '2015-01-26', 1, 1 ,80);

------------------------------------------------------------- memnum 14일 때 시작 : 여, 85, 29


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 5, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 5, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 14, '2015-02-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 5, 14, '2015-02-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 14, '2015-02-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 5, 14, '2015-02-28', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 5, 14, '2015-01-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 14, '2015-02-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 5, 13, '2015-02-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 5, 14, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 5, 14, '2015-01-29', 1, 1 ,29);

------------------------------------------------------------- memnum 15일 때 시작 : 여, 80, 25  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 5, 15, '2015-01-29', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 5, 15, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 5, 15, '2015-02-16', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 5, 15, '2015-01-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 5, 15, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 5, 15, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 5, 15, '2015-01-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 5, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 5, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 5, 15, '2015-02-05', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 15, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 5, 15, '2015-01-27', 1, 1 ,6);


------------------------------------------------------------- memnum 16일 때 시작 : 남 , 100, 30  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 5, 16, '2015-01-13', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 5, 16, '2015-01-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 5, 16, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 5, 16, '2015-02-16', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 5, 16, '2015-02-26', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 5, 16, '2015-02-24', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 5, 16, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 5, 16, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 5, 16, '2015-01-08', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 5, 16, '2015-02-17', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 5, 16, '2015-01-17', 1, 1 ,6);

------------------------------------------------------------- memnum 17일 때 시작 : 여, 85, 27  아기옷 : 7



insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 5, 17, '2015-01-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 5, 17, '2015-02-10', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 5, 17, '2015-03-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 5, 17, '2015-03-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 5, 17, '2015-02-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 5, 17, '2015-02-22', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 5, 17, '2015-02-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 17, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 5, 17, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 5, 17, '2015-01-19', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 17, '2015-01-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 5, 17, '2015-02-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 5, 17, '2015-01-20', 1, 1 ,7);


------------------------------------------------------------- memnum 18일 때 시작 : 여, 80, 27


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 5, 18, '2015-01-22', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 5, 18, '2015-02-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 5, 18, '2015-01-17', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 5, 18, '2015-01-24', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 5, 18, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 5, 18, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 5, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 5, 18, '2015-02-23', 1, 1 ,27);


------------------------------------------------------------- memnum 19일 때 시작 : 남 105 , 32 아기옷 7

insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 5, 19, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 5, 19, '2015-01-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 5, 19, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 5, 19, '2015-02-14', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 5, 19, '2015-02-17', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 5, 19, '2015-03-26', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 5, 19, '2015-01-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 5, 19, '2015-02-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 5, 19, '2015-02-21', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 5, 19, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 5, 19, '2015-01-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 5, 19, '2015-01-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 5, 19, '2015-02-11', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 5, 19, '2015-01-11', 1, 1 ,7);


------------------------------------------------------------- memnum 40일 때 시작 : 남 95, 28


insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 5, 20, '2015-01-08', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 5, 20, '2015-01-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 5, 20, '2015-01-19', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 5, 20, '2015-02-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 5, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 5, 20, '2015-03-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 5, 20, '2015-02-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 5, 20, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 5, 20, '2015-02-21', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 5, 20, '2015-01-29', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 5, 20, '2015-01-22', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 5, 20, '2015-01-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 5, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 5, 20, '2015-01-19', 1, 1 ,8);




------------------------------------------------------------
---sell 6 : 전주점


insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 6, 1, '2015-01-01', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 6, 1, '2015-01-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 6, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 37000, 0, 6, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 6, 1, '2015-03-13', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 6, 1, '2015-03-05', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 6, 1, '2015-03-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 6, 1, '2015-03-14', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 6, 1, '2015-02-26', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 6, 1, '2015-03-16', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 6, 1, '2015-06-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 6, 1, '2015-06-19', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 6, 1, '2015-06-19', 1, 1 ,75);
------------------------------------------------------------- memnum 22일 때 시작 : 아기옷, 사이즈 6 

insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 6, 2, '2015-01-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 6, 2, '2015-01-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 6, 2, '2015-01-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 6, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 6, 2, '2015-03-12', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 6, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 6, 2, '2015-03-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 6, 2, '2015-01-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 6, 2, '2015-01-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 6, 2, '2015-02-11', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 6, 2, '2015-03-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 6, 2, '2015-06-27', 1, 1 ,6);

------------------------------------------------------------- memnum 23일 때 시작 : 남자옷, 사이즈 105 , 30

insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 6, 3, '2015-01-03', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 6, 3, '2015-01-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 6, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 6, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 6, 3, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 6, 3, '2015-03-18', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 6, 3, '2015-04-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 6, 3, '2015-03-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 6, 3, '2015-05-05', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 6, 3, '2015-01-16', 1, 1 ,105);


------------------------------------------------------------- memnum 4일 때 시작 : 남자옷, 사이즈 95 , 28
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 6, 4, '2015-01-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 6, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 6, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 6, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 6, 4, '2015-03-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 6, 4, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 6, 4, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 6, 4, '2015-04-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 6, 4, '2015-05-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 6, 4, '2015-03-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 6, 4, '2015-03-24', 1, 1 ,95);


------------------------------------------------------------- memnum 5일 때 시작 : 여자옷, 사이즈 80 , 27  ,아기옷 :사이즈 8 
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 6, 5, '2015-01-05', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 6, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 6, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 6, 5, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 6, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 6, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 6, 5, '2015-03-09', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 6, 5, '2015-04-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 6, 5, '2015-04-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 6, 5, '2015-04-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 6, 5, '2015-02-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 6, 5, '2015-01-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 6, 5, '2015-02-26', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 6, 5, '2015-01-26', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 6, 5, '2015-02-26', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 6, 5, '2015-01-19', 1, 1 ,80);
------------------------------------------------------------- memnum 6일 때 시작 : 남자, 105, 32


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 6, 6, '2015-01-06', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 6, 6, '2015-02-16', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 6, 6, '2015-02-16', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 6, 6, '2015-03-05', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 6, 6, '2015-04-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 6, 6, '2015-04-23', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 6, 6, '2015-05-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 6, 6, '2015-06-05', 1, 1 ,32);


------------------------------------------------------------- memnum 7일 때 시작 : 남자, 95, 28 아기옷 : 7


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 6, 7, '2015-01-07', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 6, 7, '2015-02-02', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 6, 7, '2015-02-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 6, 7, '2015-02-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 6, 7, '2015-03-03', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 6, 7, '2015-03-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 6, 7, '2015-02-09', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 6, 7, '2015-04-13', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 6, 7, '2015-01-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 6, 7, '2015-03-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 6, 7, '2015-02-11', 1, 1 ,7);

------------------------------------------------------------- memnum 8일 때 시작 : 여, 85, 29



insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 6, 8, '2015-01-13', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 6, 8, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 6, 8, '2015-01-26', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 6, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 8, '2015-03-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 6, 8, '2015-04-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 6, 8, '2015-05-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 6, 8, '2015-03-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 8, '2015-03-03', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 6, 8, '2015-02-19', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 6, 8, '2015-04-25', 1, 1 ,85);


------------------------------------------------------------- memnum 9 일 때 시작 : 남자, 100, 30


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 6, 9, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 6, 9, '2015-01-05', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 6, 9, '2015-01-27', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 6, 9, '2015-02-21', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 6, 9, '2015-02-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 6, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 6, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 6, 9, '2015-04-14', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 6, 9, '2015-03-14', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 6, 9, '2015-02-17', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 6, 9, '2015-01-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 6, 9, '2015-01-01', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 6, 9, '2015-01-29', 1, 1 ,100);


------------------------------------------------------------- memnum 10일 때 시작 : 여, 75, 25


insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 10, '2015-01-27', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 6, 10, '2015-02-05', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 6, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 6, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 6, 10, '2015-03-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 6, 10, '2015-04-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 10, '2015-04-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 10, '2015-04-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 10, '2015-01-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 6, 10, '2015-02-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 10, '2015-03-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 10, '2015-02-16', 1, 1 ,75);


------------------------------------------------------------- memnum 11일 때 시작 : 여, 75, 25 아기옷 8

insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 11, '2015-01-13', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 6, 11, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 6, 11, '2015-03-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 6, 11, '2015-03-11', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 6, 11, '2015-03-29', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 6, 11, '2015-04-03', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 6, 11, '2015-04-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 6, 11, '2015-04-28', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 6, 11, '2015-05-28', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 6, 11, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 6, 11, '2015-02-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 6, 11, '2015-03-14', 1, 1 ,8);

------------------------------------------------------------- memnum 12 일 때 시작 : 남자, 100, 28
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 6, 12, '2015-01-11', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 6, 12, '2015-01-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 6, 12, '2015-01-22', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 6, 12, '2015-02-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 6, 12, '2015-02-19', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 6, 12, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 6, 12, '2015-03-07', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 6, 12, '2015-03-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 6, 12, '2015-03-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 6, 12, '2015-04-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 6, 12, '2015-02-02', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 6, 12, '2015-02-09', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 6, 12, '2015-03-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 6, 12, '2015-01-26', 1, 1 ,28);



------------------------------------------------------------- memnum 13일 때 시작 : 여, 80, 25 

insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 6, 13, '2015-01-07', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 6, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 6, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 13, '2015-03-08', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 6, 13, '2015-03-08', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 6, 13, '2015-03-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 13, '2015-04-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 6, 13, '2015-04-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 6, 13, '2015-05-06', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 6, 13, '2015-05-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 13, '2015-05-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 6, 13, '2015-06-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 13, '2015-01-26', 1, 1 ,80);

------------------------------------------------------------- memnum 14일 때 시작 : 여, 85, 29


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 6, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 6, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 14, '2015-02-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 6, 14, '2015-02-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 14, '2015-03-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 6, 14, '2015-03-28', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 6, 14, '2015-01-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 14, '2015-02-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 6, 13, '2015-02-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 6, 14, '2015-03-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 6, 14, '2015-06-29', 1, 1 ,29);

------------------------------------------------------------- memnum 15일 때 시작 : 여, 80, 25  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 6, 15, '2015-01-29', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 6, 15, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 6, 15, '2015-02-16', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 6, 15, '2015-03-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 6, 15, '2015-03-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 15, '2015-03-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 6, 15, '2015-04-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 6, 15, '2015-01-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 6, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 6, 15, '2015-03-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 6, 15, '2015-02-05', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 15, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 6, 15, '2015-01-27', 1, 1 ,6);


------------------------------------------------------------- memnum 16일 때 시작 : 남 , 100, 30  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 6, 16, '2015-01-13', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 6, 16, '2015-01-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 6, 16, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 6, 16, '2015-03-16', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 6, 16, '2015-03-26', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 6, 16, '2015-04-24', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 6, 16, '2015-05-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 6, 16, '2015-05-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 6, 16, '2015-01-08', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 6, 16, '2015-02-17', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 6, 16, '2015-01-17', 1, 1 ,6);

------------------------------------------------------------- memnum 17일 때 시작 : 여, 85, 27  아기옷 : 7



insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 6, 17, '2015-01-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 6, 17, '2015-02-10', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 6, 17, '2015-03-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 6, 17, '2015-03-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 6, 17, '2015-03-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 6, 17, '2015-04-22', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 6, 17, '2015-04-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 17, '2015-05-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 6, 17, '2015-05-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 6, 17, '2015-05-19', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 17, '2015-01-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 6, 17, '2015-02-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 6, 17, '2015-03-20', 1, 1 ,7);


------------------------------------------------------------- memnum 18일 때 시작 : 여, 80, 27


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 6, 18, '2015-01-22', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 6, 18, '2015-02-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 6, 18, '2015-03-17', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 6, 18, '2015-04-24', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 6, 18, '2015-05-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 6, 18, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 6, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 6, 18, '2015-02-23', 1, 1 ,27);


------------------------------------------------------------- memnum 19일 때 시작 : 남 105 , 32 아기옷 7

insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 6, 19, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 6, 19, '2015-01-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 6, 19, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 6, 19, '2015-02-14', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 6, 19, '2015-03-17', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 6, 19, '2015-03-26', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 6, 19, '2015-03-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 6, 19, '2015-04-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 6, 19, '2015-04-21', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 6, 19, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 6, 19, '2015-03-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 6, 19, '2015-02-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 6, 19, '2015-03-11', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 6, 19, '2015-01-11', 1, 1 ,7);


------------------------------------------------------------- memnum 40일 때 시작 : 남 95, 28


insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 6, 20, '2015-01-08', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 6, 20, '2015-01-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 6, 20, '2015-01-19', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 6, 20, '2015-02-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 6, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 6, 20, '2015-03-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 6, 20, '2015-03-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 6, 20, '2015-04-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 6, 20, '2015-04-21', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 6, 20, '2015-04-29', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 6, 20, '2015-05-22', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 6, 20, '2015-06-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 6, 20, '2015-01-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 6, 20, '2015-01-19', 1, 1 ,8);


------------------------------------------------------------------
-------------------------------------------------------------






------------------------------------------------------------
---sell 7 : 충청점

insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 7, 1, '2015-01-01', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 7, 1, '2015-01-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 7, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 37000, 0, 7, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 7, 1, '2015-01-13', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 7, 1, '2015-01-05', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 7, 1, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 7, 1, '2015-01-14', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 7, 1, '2015-01-26', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 7, 1, '2015-01-16', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 7, 1, '2015-01-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 7, 1, '2015-01-19', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 7, 1, '2015-01-19', 1, 1 ,75);
------------------------------------------------------------- memnum 22일 때 시작 : 아기옷, 사이즈 6 

insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 7, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 7, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 7, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 7, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 7, 2, '2015-02-12', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 7, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 7, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 7, 2, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 7, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 7, 2, '2015-02-11', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 7, 2, '2015-02-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 7, 2, '2015-02-27', 1, 1 ,6);

------------------------------------------------------------- memnum 23일 때 시작 : 남자옷, 사이즈 105 , 30

insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 7, 3, '2015-01-03', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 7, 3, '2015-01-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 7, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 7, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 7, 3, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 7, 3, '2015-03-18', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 7, 3, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 7, 3, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 7, 3, '2015-02-05', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 7, 3, '2015-02-16', 1, 1 ,105);


------------------------------------------------------------- memnum 4일 때 시작 : 남자옷, 사이즈 95 , 28
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 7, 4, '2015-01-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 7, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 7, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 7, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 7, 4, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 7, 4, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 7, 4, '2015-02-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 7, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 7, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 7, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 7, 4, '2015-01-24', 1, 1 ,95);


------------------------------------------------------------- memnum 5일 때 시작 : 여자옷, 사이즈 80 , 27  ,아기옷 :사이즈 8 
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 7, 5, '2015-01-05', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 7, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 7, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 7, 5, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 7, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 7, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 7, 5, '2015-01-09', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 7, 5, '2015-01-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 7, 5, '2015-01-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 7, 5, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 7, 5, '2015-02-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 7, 5, '2015-01-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 7, 5, '2015-02-26', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 7, 5, '2015-01-26', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 7, 5, '2015-02-26', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 7, 5, '2015-01-19', 1, 1 ,80);
------------------------------------------------------------- memnum 6일 때 시작 : 남자, 105, 32


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 7, 6, '2015-01-06', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 7, 6, '2015-02-16', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 7, 6, '2015-02-16', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 7, 6, '2015-03-05', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 7, 6, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 7, 6, '2015-02-23', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 7, 6, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 7, 6, '2015-02-05', 1, 1 ,32);


------------------------------------------------------------- memnum 7일 때 시작 : 남자, 95, 28 아기옷 : 7


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 7, 7, '2015-01-07', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 7, 7, '2015-02-02', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 7, 7, '2015-02-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 7, 7, '2015-02-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 7, 7, '2015-02-03', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 7, 7, '2015-02-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 7, 7, '2015-02-09', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 7, 7, '2015-04-13', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 7, 7, '2015-01-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 7, 7, '2015-03-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 7, 7, '2015-02-11', 1, 1 ,7);

------------------------------------------------------------- memnum 8일 때 시작 : 여, 85, 29



insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 7, 8, '2015-01-13', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 7, 8, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 7, 8, '2015-01-26', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 7, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 8, '2015-01-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 7, 8, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 7, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 7, 8, '2015-03-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 8, '2015-03-03', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 7, 8, '2015-02-19', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 7, 8, '2015-06-25', 1, 1 ,85);


------------------------------------------------------------- memnum 9 일 때 시작 : 남자, 100, 30


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 7, 9, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 7, 9, '2015-01-05', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 7, 9, '2015-01-27', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 7, 9, '2015-02-21', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 7, 9, '2015-02-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 7, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 7, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 7, 9, '2015-01-14', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 7, 9, '2015-01-14', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 7, 9, '2015-01-17', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 7, 9, '2015-01-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 7, 9, '2015-01-01', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 7, 9, '2015-01-29', 1, 1 ,100);


------------------------------------------------------------- memnum 10일 때 시작 : 여, 75, 25


insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 10, '2015-01-27', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 7, 10, '2015-02-05', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 7, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 7, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 7, 10, '2015-02-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 7, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 10, '2015-01-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 10, '2015-01-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 7, 10, '2015-02-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 10, '2015-02-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 10, '2015-02-16', 1, 1 ,75);


------------------------------------------------------------- memnum 11일 때 시작 : 여, 75, 25 아기옷 8

insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 11, '2015-01-13', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 7, 11, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 7, 11, '2015-03-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 7, 11, '2015-03-11', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 7, 11, '2015-03-29', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 7, 11, '2015-01-03', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 7, 11, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 7, 11, '2015-01-28', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 7, 11, '2015-01-28', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 7, 11, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 7, 11, '2015-02-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 7, 11, '2015-02-14', 1, 1 ,8);

------------------------------------------------------------- memnum 12 일 때 시작 : 남자, 100, 28
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 7, 12, '2015-01-11', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 7, 12, '2015-01-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 7, 12, '2015-01-22', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 7, 12, '2015-02-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 7, 12, '2015-02-19', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 7, 12, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 7, 12, '2015-01-07', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 7, 12, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 7, 12, '2015-01-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 7, 12, '2015-01-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 7, 12, '2015-01-02', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 7, 12, '2015-02-09', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 7, 12, '2015-02-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 7, 12, '2015-01-26', 1, 1 ,28);



------------------------------------------------------------- memnum 13일 때 시작 : 여, 80, 25 

insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 7, 13, '2015-01-07', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 7, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 7, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 13, '2015-01-08', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 7, 13, '2015-01-08', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 7, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 7, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 7, 13, '2015-02-06', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 7, 13, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 13, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 7, 13, '2015-06-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 13, '2015-01-26', 1, 1 ,80);

------------------------------------------------------------- memnum 14일 때 시작 : 여, 85, 29


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 7, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 7, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 14, '2015-02-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 7, 14, '2015-02-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 14, '2015-02-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 7, 14, '2015-02-28', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 7, 14, '2015-01-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 14, '2015-02-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 7, 13, '2015-02-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 7, 14, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 7, 14, '2015-01-29', 1, 1 ,29);

------------------------------------------------------------- memnum 15일 때 시작 : 여, 80, 25  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 7, 15, '2015-01-29', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 7, 15, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 7, 15, '2015-02-16', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 7, 15, '2015-01-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 7, 15, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 7, 15, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 7, 15, '2015-01-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 7, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 7, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 7, 15, '2015-02-05', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 15, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 7, 15, '2015-01-27', 1, 1 ,6);


------------------------------------------------------------- memnum 16일 때 시작 : 남 , 100, 30  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 7, 16, '2015-01-13', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 7, 16, '2015-01-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 7, 16, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 7, 16, '2015-02-16', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 7, 16, '2015-02-26', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 7, 16, '2015-02-24', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 7, 16, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 7, 16, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 7, 16, '2015-01-08', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 7, 16, '2015-02-17', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 7, 16, '2015-01-17', 1, 1 ,6);

------------------------------------------------------------- memnum 17일 때 시작 : 여, 85, 27  아기옷 : 7



insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 7, 17, '2015-01-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 7, 17, '2015-02-10', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 7, 17, '2015-03-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 7, 17, '2015-03-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 7, 17, '2015-02-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 7, 17, '2015-02-22', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 7, 17, '2015-02-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 17, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 7, 17, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 7, 17, '2015-01-19', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 17, '2015-01-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 7, 17, '2015-02-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 7, 17, '2015-01-20', 1, 1 ,7);


------------------------------------------------------------- memnum 18일 때 시작 : 여, 80, 27


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 7, 18, '2015-01-22', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 7, 18, '2015-02-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 7, 18, '2015-01-17', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 7, 18, '2015-01-24', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 7, 18, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 7, 18, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 7, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 7, 18, '2015-02-23', 1, 1 ,27);


------------------------------------------------------------- memnum 19일 때 시작 : 남 105 , 32 아기옷 7

insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 7, 19, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 7, 19, '2015-01-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 7, 19, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 7, 19, '2015-02-14', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 7, 19, '2015-02-17', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 7, 19, '2015-03-26', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 7, 19, '2015-01-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 7, 19, '2015-02-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 7, 19, '2015-02-21', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 7, 19, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 7, 19, '2015-01-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 7, 19, '2015-01-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 7, 19, '2015-02-11', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 7, 19, '2015-01-11', 1, 1 ,7);


------------------------------------------------------------- memnum 40일 때 시작 : 남 95, 28


insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 7, 20, '2015-01-08', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 7, 20, '2015-01-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 7, 20, '2015-01-19', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 7, 20, '2015-02-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 7, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 7, 20, '2015-03-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 7, 20, '2015-02-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 7, 20, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 7, 20, '2015-02-21', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 7, 20, '2015-01-29', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 7, 20, '2015-01-22', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 7, 20, '2015-01-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 7, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 7, 20, '2015-01-19', 1, 1 ,8);

-----------------------------------------------------------------
---------------------------------------------------------------






------------------------------------------------------------
---sell 8 : 강원점

insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 8, 1, '2015-01-01', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 8, 1, '2015-01-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 8, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 37000, 0, 8, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 8, 1, '2015-01-13', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 8, 1, '2015-01-05', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 8, 1, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 8, 1, '2015-01-14', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 8, 1, '2015-01-26', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 8, 1, '2015-01-16', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 8, 1, '2015-01-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 8, 1, '2015-01-19', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 8, 1, '2015-01-19', 1, 1 ,75);
------------------------------------------------------------- memnum 22일 때 시작 : 아기옷, 사이즈 6 

insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 8, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 8, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 8, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 8, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 8, 2, '2015-02-12', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 8, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 8, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 8, 2, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 8, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 8, 2, '2015-02-11', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 8, 2, '2015-02-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 8, 2, '2015-02-27', 1, 1 ,6);

------------------------------------------------------------- memnum 23일 때 시작 : 남자옷, 사이즈 105 , 30

insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 8, 3, '2015-01-03', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 8, 3, '2015-01-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 8, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 8, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 8, 3, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 8, 3, '2015-03-18', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 8, 3, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 8, 3, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 8, 3, '2015-02-05', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 8, 3, '2015-02-16', 1, 1 ,105);


------------------------------------------------------------- memnum 4일 때 시작 : 남자옷, 사이즈 95 , 28
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 8, 4, '2015-01-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 8, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 8, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 8, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 8, 4, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 8, 4, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 8, 4, '2015-02-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 8, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 8, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 8, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 8, 4, '2015-01-24', 1, 1 ,95);


------------------------------------------------------------- memnum 5일 때 시작 : 여자옷, 사이즈 80 , 27  ,아기옷 :사이즈 8 
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 8, 5, '2015-01-05', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 8, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 8, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 8, 5, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 8, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 8, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 8, 5, '2015-01-09', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 8, 5, '2015-01-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 8, 5, '2015-01-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 8, 5, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 8, 5, '2015-02-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 8, 5, '2015-01-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 8, 5, '2015-02-26', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 8, 5, '2015-01-26', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 8, 5, '2015-02-26', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 8, 5, '2015-01-19', 1, 1 ,80);
------------------------------------------------------------- memnum 6일 때 시작 : 남자, 105, 32


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 8, 6, '2015-01-06', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 8, 6, '2015-02-16', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 8, 6, '2015-02-16', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 8, 6, '2015-03-05', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 8, 6, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 8, 6, '2015-02-23', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 8, 6, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 8, 6, '2015-02-05', 1, 1 ,32);


------------------------------------------------------------- memnum 7일 때 시작 : 남자, 95, 28 아기옷 : 7


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 8, 7, '2015-01-07', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 8, 7, '2015-02-02', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 8, 7, '2015-02-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 8, 7, '2015-02-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 8, 7, '2015-02-03', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 8, 7, '2015-02-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 8, 7, '2015-02-09', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 8, 7, '2015-04-13', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 8, 7, '2015-01-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 8, 7, '2015-03-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 8, 7, '2015-02-11', 1, 1 ,7);

------------------------------------------------------------- memnum 8일 때 시작 : 여, 85, 29



insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 8, 8, '2015-01-13', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 8, 8, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 8, 8, '2015-01-26', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 8, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 8, '2015-01-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 8, 8, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 8, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 8, 8, '2015-03-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 8, '2015-03-03', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 8, 8, '2015-02-19', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 8, 8, '2015-06-25', 1, 1 ,85);


------------------------------------------------------------- memnum 9 일 때 시작 : 남자, 100, 30


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 8, 9, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 8, 9, '2015-01-05', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 8, 9, '2015-01-27', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 8, 9, '2015-02-21', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 8, 9, '2015-02-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 8, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 8, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 8, 9, '2015-01-14', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 8, 9, '2015-01-14', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 8, 9, '2015-01-17', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 8, 9, '2015-01-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 8, 9, '2015-01-01', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 8, 9, '2015-01-29', 1, 1 ,100);


------------------------------------------------------------- memnum 10일 때 시작 : 여, 75, 25


insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 10, '2015-01-27', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 8, 10, '2015-02-05', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 8, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 8, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 8, 10, '2015-02-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 8, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 10, '2015-01-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 10, '2015-01-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 8, 10, '2015-02-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 10, '2015-02-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 10, '2015-02-16', 1, 1 ,75);


------------------------------------------------------------- memnum 11일 때 시작 : 여, 75, 25 아기옷 8

insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 11, '2015-01-13', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 8, 11, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 8, 11, '2015-03-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 8, 11, '2015-03-11', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 8, 11, '2015-03-29', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 8, 11, '2015-01-03', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 8, 11, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 8, 11, '2015-01-28', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 8, 11, '2015-01-28', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 8, 11, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 8, 11, '2015-02-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 8, 11, '2015-02-14', 1, 1 ,8);

------------------------------------------------------------- memnum 12 일 때 시작 : 남자, 100, 28
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 8, 12, '2015-01-11', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 8, 12, '2015-01-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 8, 12, '2015-01-22', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 8, 12, '2015-02-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 8, 12, '2015-02-19', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 8, 12, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 8, 12, '2015-01-07', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 8, 12, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 8, 12, '2015-01-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 8, 12, '2015-01-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 8, 12, '2015-01-02', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 8, 12, '2015-02-09', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 8, 12, '2015-02-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 8, 12, '2015-01-26', 1, 1 ,28);



------------------------------------------------------------- memnum 13일 때 시작 : 여, 80, 25 

insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 8, 13, '2015-01-07', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 8, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 8, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 13, '2015-01-08', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 8, 13, '2015-01-08', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 8, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 8, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 8, 13, '2015-02-06', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 8, 13, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 13, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 8, 13, '2015-06-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 13, '2015-01-26', 1, 1 ,80);

------------------------------------------------------------- memnum 14일 때 시작 : 여, 85, 29


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 8, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 8, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 14, '2015-02-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 8, 14, '2015-02-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 14, '2015-02-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 8, 14, '2015-02-28', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 8, 14, '2015-01-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 14, '2015-02-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 8, 13, '2015-02-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 8, 14, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 8, 14, '2015-01-29', 1, 1 ,29);

------------------------------------------------------------- memnum 15일 때 시작 : 여, 80, 25  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 8, 15, '2015-01-29', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 8, 15, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 8, 15, '2015-02-16', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 8, 15, '2015-01-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 8, 15, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 8, 15, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 8, 15, '2015-01-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 8, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 8, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 8, 15, '2015-02-05', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 15, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 8, 15, '2015-01-27', 1, 1 ,6);


------------------------------------------------------------- memnum 16일 때 시작 : 남 , 100, 30  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 8, 16, '2015-01-13', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 8, 16, '2015-01-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 8, 16, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 8, 16, '2015-02-16', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 8, 16, '2015-02-26', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 8, 16, '2015-02-24', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 8, 16, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 8, 16, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 8, 16, '2015-01-08', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 8, 16, '2015-02-17', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 8, 16, '2015-01-17', 1, 1 ,6);

------------------------------------------------------------- memnum 17일 때 시작 : 여, 85, 27  아기옷 : 7



insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 8, 17, '2015-01-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 8, 17, '2015-02-10', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 8, 17, '2015-03-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 8, 17, '2015-03-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 8, 17, '2015-02-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 8, 17, '2015-02-22', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 8, 17, '2015-02-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 17, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 8, 17, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 8, 17, '2015-01-19', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 17, '2015-01-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 8, 17, '2015-02-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 8, 17, '2015-01-20', 1, 1 ,7);


------------------------------------------------------------- memnum 18일 때 시작 : 여, 80, 27


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 8, 18, '2015-01-22', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 8, 18, '2015-02-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 8, 18, '2015-01-17', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 8, 18, '2015-01-24', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 8, 18, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 8, 18, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 8, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 8, 18, '2015-02-23', 1, 1 ,27);


------------------------------------------------------------- memnum 19일 때 시작 : 남 105 , 32 아기옷 7

insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 8, 19, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 8, 19, '2015-01-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 8, 19, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 8, 19, '2015-02-14', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 8, 19, '2015-02-17', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 8, 19, '2015-03-26', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 8, 19, '2015-01-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 8, 19, '2015-02-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 8, 19, '2015-02-21', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 8, 19, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 8, 19, '2015-01-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 8, 19, '2015-01-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 8, 19, '2015-02-11', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 8, 19, '2015-01-11', 1, 1 ,7);


------------------------------------------------------------- memnum 40일 때 시작 : 남 95, 28


insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 8, 20, '2015-01-08', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 8, 20, '2015-01-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 8, 20, '2015-01-19', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 8, 20, '2015-02-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 8, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 8, 20, '2015-03-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 8, 20, '2015-02-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 8, 20, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 8, 20, '2015-02-21', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 8, 20, '2015-01-29', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 8, 20, '2015-01-22', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 8, 20, '2015-01-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 8, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 8, 20, '2015-01-19', 1, 1 ,8);



-------------------------------------------------------------------
--------------------------------------------






------------------------------------------------------------
---sell 9 : 내곡점

insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 9, 1, '2015-01-01', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 9, 1, '2015-01-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 9, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 37000, 0, 9, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 9, 1, '2015-01-13', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 9, 1, '2015-01-05', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 9, 1, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 9, 1, '2015-01-14', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 9, 1, '2015-01-26', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 9, 1, '2015-01-16', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 9, 1, '2015-01-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 9, 1, '2015-01-19', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 9, 1, '2015-01-19', 1, 1 ,75);
------------------------------------------------------------- memnum 22일 때 시작 : 아기옷, 사이즈 6 

insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 9, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 9, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 9, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 9, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 9, 2, '2015-02-12', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 9, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 9, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 9, 2, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 9, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 9, 2, '2015-02-11', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 9, 2, '2015-02-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 9, 2, '2015-02-27', 1, 1 ,6);

------------------------------------------------------------- memnum 23일 때 시작 : 남자옷, 사이즈 105 , 30

insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 9, 3, '2015-01-03', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 9, 3, '2015-01-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 9, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 9, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 9, 3, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 9, 3, '2015-03-18', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 9, 3, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 9, 3, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 9, 3, '2015-02-05', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 9, 3, '2015-02-16', 1, 1 ,105);


------------------------------------------------------------- memnum 4일 때 시작 : 남자옷, 사이즈 95 , 28
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 9, 4, '2015-01-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 9, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 9, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 9, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 9, 4, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 9, 4, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 9, 4, '2015-02-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 9, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 9, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 9, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 9, 4, '2015-01-24', 1, 1 ,95);


------------------------------------------------------------- memnum 5일 때 시작 : 여자옷, 사이즈 80 , 27  ,아기옷 :사이즈 8 
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 9, 5, '2015-01-05', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 9, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 9, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 9, 5, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 9, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 9, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 9, 5, '2015-01-09', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 9, 5, '2015-01-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 9, 5, '2015-01-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 9, 5, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 9, 5, '2015-02-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 9, 5, '2015-01-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 9, 5, '2015-02-26', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 9, 5, '2015-01-26', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 9, 5, '2015-02-26', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 9, 5, '2015-01-19', 1, 1 ,80);
------------------------------------------------------------- memnum 6일 때 시작 : 남자, 105, 32


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 9, 6, '2015-01-06', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 9, 6, '2015-02-16', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 9, 6, '2015-02-16', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 9, 6, '2015-03-05', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 9, 6, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 9, 6, '2015-02-23', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 9, 6, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 9, 6, '2015-02-05', 1, 1 ,32);


------------------------------------------------------------- memnum 7일 때 시작 : 남자, 95, 28 아기옷 : 7


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 9, 7, '2015-01-07', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 9, 7, '2015-02-02', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 9, 7, '2015-02-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 9, 7, '2015-02-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 9, 7, '2015-02-03', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 9, 7, '2015-02-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 9, 7, '2015-02-09', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 9, 7, '2015-04-13', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 9, 7, '2015-01-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 9, 7, '2015-03-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 9, 7, '2015-02-11', 1, 1 ,7);

------------------------------------------------------------- memnum 8일 때 시작 : 여, 85, 29



insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 9, 8, '2015-01-13', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 9, 8, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 9, 8, '2015-01-26', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 9, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 8, '2015-01-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 9, 8, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 9, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 9, 8, '2015-03-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 8, '2015-03-03', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 9, 8, '2015-02-19', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 9, 8, '2015-06-25', 1, 1 ,85);


------------------------------------------------------------- memnum 9 일 때 시작 : 남자, 100, 30


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 9, 9, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 9, 9, '2015-01-05', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 9, 9, '2015-01-27', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 9, 9, '2015-02-21', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 9, 9, '2015-02-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 9, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 9, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 9, 9, '2015-01-14', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 9, 9, '2015-01-14', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 9, 9, '2015-01-17', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 9, 9, '2015-01-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 9, 9, '2015-01-01', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 9, 9, '2015-01-29', 1, 1 ,100);


------------------------------------------------------------- memnum 10일 때 시작 : 여, 75, 25


insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 10, '2015-01-27', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 9, 10, '2015-02-05', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 9, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 9, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 9, 10, '2015-02-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 9, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 10, '2015-01-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 10, '2015-01-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 9, 10, '2015-02-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 10, '2015-02-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 10, '2015-02-16', 1, 1 ,75);


------------------------------------------------------------- memnum 11일 때 시작 : 여, 75, 25 아기옷 8

insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 11, '2015-01-13', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 9, 11, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 9, 11, '2015-03-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 9, 11, '2015-03-11', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 9, 11, '2015-03-29', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 9, 11, '2015-01-03', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 9, 11, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 9, 11, '2015-01-28', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 9, 11, '2015-01-28', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 9, 11, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 9, 11, '2015-02-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 9, 11, '2015-02-14', 1, 1 ,8);

------------------------------------------------------------- memnum 12 일 때 시작 : 남자, 100, 28
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 9, 12, '2015-01-11', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 9, 12, '2015-01-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 9, 12, '2015-01-22', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 9, 12, '2015-02-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 9, 12, '2015-02-19', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 9, 12, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 9, 12, '2015-01-07', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 9, 12, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 9, 12, '2015-01-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 9, 12, '2015-01-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 9, 12, '2015-01-02', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 9, 12, '2015-02-09', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 9, 12, '2015-02-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 9, 12, '2015-01-26', 1, 1 ,28);



------------------------------------------------------------- memnum 13일 때 시작 : 여, 80, 25 

insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 9, 13, '2015-01-07', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 9, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 9, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 13, '2015-01-08', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 9, 13, '2015-01-08', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 9, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 9, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 9, 13, '2015-02-06', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 9, 13, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 13, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 9, 13, '2015-06-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 13, '2015-01-26', 1, 1 ,80);

------------------------------------------------------------- memnum 14일 때 시작 : 여, 85, 29


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 9, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 9, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 14, '2015-02-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 9, 14, '2015-02-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 14, '2015-02-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 9, 14, '2015-02-28', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 9, 14, '2015-01-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 14, '2015-02-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 9, 13, '2015-02-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 9, 14, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 9, 14, '2015-01-29', 1, 1 ,29);

------------------------------------------------------------- memnum 15일 때 시작 : 여, 80, 25  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 9, 15, '2015-01-29', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 9, 15, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 9, 15, '2015-02-16', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 9, 15, '2015-01-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 9, 15, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 9, 15, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 9, 15, '2015-01-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 9, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 9, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 9, 15, '2015-02-05', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 15, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 9, 15, '2015-01-27', 1, 1 ,6);


------------------------------------------------------------- memnum 16일 때 시작 : 남 , 100, 30  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 9, 16, '2015-01-13', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 9, 16, '2015-01-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 9, 16, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 9, 16, '2015-02-16', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 9, 16, '2015-02-26', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 9, 16, '2015-02-24', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 9, 16, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 9, 16, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 9, 16, '2015-01-08', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 9, 16, '2015-02-17', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 9, 16, '2015-01-17', 1, 1 ,6);

------------------------------------------------------------- memnum 17일 때 시작 : 여, 85, 27  아기옷 : 7



insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 9, 17, '2015-01-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 9, 17, '2015-02-10', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 9, 17, '2015-03-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 9, 17, '2015-03-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 9, 17, '2015-02-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 9, 17, '2015-02-22', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 9, 17, '2015-02-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 17, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 9, 17, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 9, 17, '2015-01-19', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 17, '2015-01-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 9, 17, '2015-02-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 9, 17, '2015-01-20', 1, 1 ,7);


------------------------------------------------------------- memnum 18일 때 시작 : 여, 80, 27


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 9, 18, '2015-01-22', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 9, 18, '2015-02-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 9, 18, '2015-01-17', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 9, 18, '2015-01-24', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 9, 18, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 9, 18, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 9, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 9, 18, '2015-02-23', 1, 1 ,27);


------------------------------------------------------------- memnum 19일 때 시작 : 남 105 , 32 아기옷 7

insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 9, 19, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 9, 19, '2015-01-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 9, 19, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 9, 19, '2015-02-14', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 9, 19, '2015-02-17', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 9, 19, '2015-03-26', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 9, 19, '2015-01-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 9, 19, '2015-02-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 9, 19, '2015-02-21', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 9, 19, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 9, 19, '2015-01-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 9, 19, '2015-01-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 9, 19, '2015-02-11', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 9, 19, '2015-01-11', 1, 1 ,7);


------------------------------------------------------------- memnum 40일 때 시작 : 남 95, 28


insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 9, 20, '2015-01-08', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 9, 20, '2015-01-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 9, 20, '2015-01-19', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 9, 20, '2015-02-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 9, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 9, 20, '2015-03-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 9, 20, '2015-02-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 9, 20, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 9, 20, '2015-02-21', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 9, 20, '2015-01-29', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 9, 20, '2015-01-22', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 9, 20, '2015-01-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 9, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 9, 20, '2015-01-19', 1, 1 ,8);



-------------------------------------------------------------------
---------------------------------------------------------------






------------------------------------------------------------
---sell 10 : 서초점

insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 10, 1, '2015-01-01', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 10, 1, '2015-01-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 10, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 37000, 0, 10, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 10, 1, '2015-01-13', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 10, 1, '2015-01-05', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 10, 1, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 10, 1, '2015-01-14', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 10, 1, '2015-01-26', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 10, 1, '2015-01-16', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 10, 1, '2015-01-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 10, 1, '2015-01-19', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 10, 1, '2015-01-19', 1, 1 ,75);
------------------------------------------------------------- memnum 22일 때 시작 : 아기옷, 사이즈 6 

insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 10, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 10, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 10, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 10, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 10, 2, '2015-02-12', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 10, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 10, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 10, 2, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 10, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 10, 2, '2015-02-11', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 10, 2, '2015-02-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 10, 2, '2015-02-27', 1, 1 ,6);

------------------------------------------------------------- memnum 23일 때 시작 : 남자옷, 사이즈 105 , 30

insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 10, 3, '2015-01-03', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 10, 3, '2015-01-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 10, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 10, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 10, 3, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 10, 3, '2015-03-18', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 10, 3, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 10, 3, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 10, 3, '2015-02-05', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 10, 3, '2015-02-16', 1, 1 ,105);


------------------------------------------------------------- memnum 4일 때 시작 : 남자옷, 사이즈 95 , 28
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 10, 4, '2015-01-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 10, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 10, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 10, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 10, 4, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 10, 4, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 10, 4, '2015-02-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 10, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 10, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 10, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 10, 4, '2015-01-24', 1, 1 ,95);


------------------------------------------------------------- memnum 5일 때 시작 : 여자옷, 사이즈 80 , 27  ,아기옷 :사이즈 8 
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 10, 5, '2015-01-05', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 10, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 10, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 10, 5, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 10, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 10, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 10, 5, '2015-01-09', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 10, 5, '2015-01-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 10, 5, '2015-01-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 10, 5, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 10, 5, '2015-02-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 10, 5, '2015-01-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 10, 5, '2015-02-26', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 10, 5, '2015-01-26', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 10, 5, '2015-02-26', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 10, 5, '2015-01-19', 1, 1 ,80);
------------------------------------------------------------- memnum 6일 때 시작 : 남자, 105, 32


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 10, 6, '2015-01-06', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 10, 6, '2015-02-16', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 10, 6, '2015-02-16', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 10, 6, '2015-03-05', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 10, 6, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 10, 6, '2015-02-23', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 10, 6, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 10, 6, '2015-02-05', 1, 1 ,32);


------------------------------------------------------------- memnum 7일 때 시작 : 남자, 95, 28 아기옷 : 7


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 10, 7, '2015-01-07', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 10, 7, '2015-02-02', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 10, 7, '2015-02-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 10, 7, '2015-02-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 10, 7, '2015-02-03', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 10, 7, '2015-02-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 10, 7, '2015-02-09', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 10, 7, '2015-04-13', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 10, 7, '2015-01-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 10, 7, '2015-03-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 10, 7, '2015-02-11', 1, 1 ,7);

------------------------------------------------------------- memnum 8일 때 시작 : 여, 85, 29



insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 10, 8, '2015-01-13', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 10, 8, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 10, 8, '2015-01-26', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 10, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 8, '2015-01-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 10, 8, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 10, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 10, 8, '2015-03-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 8, '2015-03-03', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 10, 8, '2015-02-19', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 10, 8, '2015-06-25', 1, 1 ,85);


------------------------------------------------------------- memnum 9 일 때 시작 : 남자, 100, 30


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 10, 9, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 10, 9, '2015-01-05', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 10, 9, '2015-01-27', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 10, 9, '2015-02-21', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 10, 9, '2015-02-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 10, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 10, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 10, 9, '2015-01-14', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 10, 9, '2015-01-14', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 10, 9, '2015-01-17', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 10, 9, '2015-01-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 10, 9, '2015-01-01', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 10, 9, '2015-01-29', 1, 1 ,100);


------------------------------------------------------------- memnum 10일 때 시작 : 여, 75, 25


insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 10, '2015-01-27', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 10, 10, '2015-02-05', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 10, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 10, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 10, 10, '2015-02-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 10, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 10, '2015-01-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 10, '2015-01-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 10, 10, '2015-02-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 10, '2015-02-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 10, '2015-02-16', 1, 1 ,75);


------------------------------------------------------------- memnum 11일 때 시작 : 여, 75, 25 아기옷 8

insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 11, '2015-01-13', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 10, 11, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 10, 11, '2015-03-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 10, 11, '2015-03-11', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 10, 11, '2015-03-29', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 10, 11, '2015-01-03', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 10, 11, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 10, 11, '2015-01-28', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 10, 11, '2015-01-28', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 10, 11, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 10, 11, '2015-02-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 10, 11, '2015-02-14', 1, 1 ,8);

------------------------------------------------------------- memnum 12 일 때 시작 : 남자, 100, 28
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 10, 12, '2015-01-11', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 10, 12, '2015-01-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 10, 12, '2015-01-22', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 10, 12, '2015-02-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 10, 12, '2015-02-19', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 10, 12, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 10, 12, '2015-01-07', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 10, 12, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 10, 12, '2015-01-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 10, 12, '2015-01-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 10, 12, '2015-01-02', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 10, 12, '2015-02-09', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 10, 12, '2015-02-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 10, 12, '2015-01-26', 1, 1 ,28);



------------------------------------------------------------- memnum 13일 때 시작 : 여, 80, 25 

insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 10, 13, '2015-01-07', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 10, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 10, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 13, '2015-01-08', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 10, 13, '2015-01-08', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 10, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 10, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 10, 13, '2015-02-06', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 10, 13, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 13, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 10, 13, '2015-06-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 13, '2015-01-26', 1, 1 ,80);

------------------------------------------------------------- memnum 14일 때 시작 : 여, 85, 29


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 10, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 10, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 14, '2015-02-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 10, 14, '2015-02-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 14, '2015-02-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 10, 14, '2015-02-28', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 10, 14, '2015-01-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 14, '2015-02-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 10, 14, '2015-02-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 10, 14, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 10, 14, '2015-01-29', 1, 1 ,29);

------------------------------------------------------------- memnum 15일 때 시작 : 여, 80, 25  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 10, 15, '2015-01-29', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 10, 15, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 10, 15, '2015-02-16', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 10, 15, '2015-01-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 10, 15, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 10, 15, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 10, 15, '2015-01-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 10, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 10, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 10, 15, '2015-02-05', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 15, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 10, 15, '2015-01-27', 1, 1 ,6);


------------------------------------------------------------- memnum 16일 때 시작 : 남 , 100, 30  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 10, 16, '2015-01-13', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 10, 16, '2015-01-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 10, 16, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 10, 16, '2015-02-16', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 10, 16, '2015-02-26', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 10, 16, '2015-02-24', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 10, 16, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 10, 16, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 10, 16, '2015-01-08', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 10, 16, '2015-02-17', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 10, 16, '2015-01-17', 1, 1 ,6);

------------------------------------------------------------- memnum 17일 때 시작 : 여, 85, 27  아기옷 : 7



insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 10, 17, '2015-01-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 10, 17, '2015-02-10', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 10, 17, '2015-03-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 10, 17, '2015-03-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 10, 17, '2015-02-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 10, 17, '2015-02-22', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 10, 17, '2015-02-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 17, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 10, 17, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 10, 17, '2015-01-19', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 17, '2015-01-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 10, 17, '2015-02-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 10, 17, '2015-01-20', 1, 1 ,7);


------------------------------------------------------------- memnum 18일 때 시작 : 여, 80, 27


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 10, 18, '2015-01-22', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 10, 18, '2015-02-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 10, 18, '2015-01-17', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 10, 18, '2015-01-24', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 10, 18, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 10, 18, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 10, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 10, 18, '2015-02-23', 1, 1 ,27);


------------------------------------------------------------- memnum 19일 때 시작 : 남 105 , 32 아기옷 7

insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 10, 19, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 10, 19, '2015-01-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 10, 19, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 10, 19, '2015-02-14', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 10, 19, '2015-02-17', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 10, 19, '2015-03-26', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 10, 19, '2015-01-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 10, 19, '2015-02-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 10, 19, '2015-02-21', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 10, 19, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 10, 19, '2015-01-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 10, 19, '2015-01-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 10, 19, '2015-02-11', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 10, 19, '2015-01-11', 1, 1 ,7);


------------------------------------------------------------- memnum 40일 때 시작 : 남 95, 28


insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 10, 20, '2015-01-08', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 10, 20, '2015-01-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 10, 20, '2015-01-19', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 10, 20, '2015-02-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 10, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 10, 20, '2015-03-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 10, 20, '2015-02-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 10, 20, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 10, 20, '2015-02-21', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 10, 20, '2015-01-29', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 10, 20, '2015-01-22', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 10, 20, '2015-01-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 10, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 10, 20, '2015-01-19', 1, 1 ,8);



------------------------------------------------------------
-----------------------------------------------------------



------------------------------------------------------------
---sell 11 : 강남점

insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 11, 1, '2015-01-01', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 11, 1, '2015-01-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 11, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 37000, 0, 1, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 11, 1, '2015-01-13', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 11, 1, '2015-01-05', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 11, 1, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 11, 1, '2015-01-14', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 11, 1, '2015-01-26', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 11, 1, '2015-01-16', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 11, 1, '2015-01-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 11, 1, '2015-01-19', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 11, 1, '2015-01-19', 1, 1 ,75);
------------------------------------------------------------- memnum 22일 때 시작 : 아기옷, 사이즈 6 

insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 11, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 11, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 11, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 11, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 11, 2, '2015-02-12', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 11, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 11, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 11, 2, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 11, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 11, 2, '2015-02-11', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 11, 2, '2015-02-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 11, 2, '2015-02-27', 1, 1 ,6);

------------------------------------------------------------- memnum 23일 때 시작 : 남자옷, 사이즈 105 , 30

insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 11, 3, '2015-01-03', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 11, 3, '2015-01-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 11, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 11, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 11, 3, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 11, 3, '2015-03-18', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 11, 3, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 11, 3, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 11, 3, '2015-02-05', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 11, 3, '2015-02-16', 1, 1 ,105);


------------------------------------------------------------- memnum 4일 때 시작 : 남자옷, 사이즈 95 , 28
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 11, 4, '2015-01-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 11, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 11, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 11, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 11, 4, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 11, 4, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 11, 4, '2015-02-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 11, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 11, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 11, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 11, 4, '2015-01-24', 1, 1 ,95);


------------------------------------------------------------- memnum 5일 때 시작 : 여자옷, 사이즈 80 , 27  ,아기옷 :사이즈 8 
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 11, 5, '2015-01-05', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 11, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 11, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 11, 5, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 11, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 11, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 11, 5, '2015-01-09', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 11, 5, '2015-01-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 11, 5, '2015-01-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 11, 5, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 11, 5, '2015-02-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 11, 5, '2015-01-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 11, 5, '2015-02-26', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 11, 5, '2015-01-26', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 11, 5, '2015-02-26', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 11, 5, '2015-01-19', 1, 1 ,80);
------------------------------------------------------------- memnum 6일 때 시작 : 남자, 105, 32


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 11, 6, '2015-01-06', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 11, 6, '2015-02-16', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 11, 6, '2015-02-16', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 11, 6, '2015-03-05', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 11, 6, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 11, 6, '2015-02-23', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 11, 6, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 11, 6, '2015-02-05', 1, 1 ,32);


------------------------------------------------------------- memnum 7일 때 시작 : 남자, 95, 28 아기옷 : 7


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 11, 7, '2015-01-07', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 11, 7, '2015-02-02', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 11, 7, '2015-02-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 11, 7, '2015-02-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 11, 7, '2015-02-03', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 11, 7, '2015-02-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 11, 7, '2015-02-09', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 11, 7, '2015-04-13', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 11, 7, '2015-01-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 11, 7, '2015-03-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 11, 7, '2015-02-11', 1, 1 ,7);

------------------------------------------------------------- memnum 8일 때 시작 : 여, 85, 29



insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 11, 8, '2015-01-13', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 11, 8, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 11, 8, '2015-01-26', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 11, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 8, '2015-01-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 11, 8, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 11, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 11, 8, '2015-03-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 8, '2015-03-03', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 11, 8, '2015-02-19', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 11, 8, '2015-06-25', 1, 1 ,85);


------------------------------------------------------------- memnum 9 일 때 시작 : 남자, 100, 30


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 11, 9, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 11, 9, '2015-01-05', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 11, 9, '2015-01-27', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 11, 9, '2015-02-21', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 11, 9, '2015-02-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 11, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 11, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 11, 9, '2015-01-14', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 11, 9, '2015-01-14', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 11, 9, '2015-01-17', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 11, 9, '2015-01-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 11, 9, '2015-01-01', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 11, 9, '2015-01-29', 1, 1 ,100);


------------------------------------------------------------- memnum 10일 때 시작 : 여, 75, 25


insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 10, '2015-01-27', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 11, 10, '2015-02-05', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 11, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 11, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 11, 10, '2015-02-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 11, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 10, '2015-01-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 10, '2015-01-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 11, 10, '2015-02-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 10, '2015-02-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 10, '2015-02-16', 1, 1 ,75);


------------------------------------------------------------- memnum 11일 때 시작 : 여, 75, 25 아기옷 8

insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 11, '2015-01-13', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 11, 11, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 11, 11, '2015-03-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 11, 11, '2015-03-11', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 11, 11, '2015-03-29', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 11, 11, '2015-01-03', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 11, 11, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 11, 11, '2015-01-28', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 11, 11, '2015-01-28', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 11, 11, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 11, 11, '2015-02-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 11, 11, '2015-02-14', 1, 1 ,8);

------------------------------------------------------------- memnum 12 일 때 시작 : 남자, 100, 28
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 11, 12, '2015-01-11', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 11, 12, '2015-01-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 11, 12, '2015-01-22', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 11, 12, '2015-02-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 11, 12, '2015-02-19', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 11, 12, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 11, 12, '2015-01-07', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 11, 12, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 11, 12, '2015-01-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 11, 12, '2015-01-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 11, 12, '2015-01-02', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 11, 12, '2015-02-09', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 11, 12, '2015-02-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 11, 12, '2015-01-26', 1, 1 ,28);



------------------------------------------------------------- memnum 13일 때 시작 : 여, 80, 25 

insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 11, 13, '2015-01-07', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 11, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 11, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 13, '2015-01-08', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 11, 13, '2015-01-08', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 11, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 11, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 11, 13, '2015-02-06', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 11, 13, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 13, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 11, 13, '2015-06-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 13, '2015-01-26', 1, 1 ,80);

------------------------------------------------------------- memnum 14일 때 시작 : 여, 85, 29


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 11, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 11, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 14, '2015-02-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 11, 14, '2015-02-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 14, '2015-02-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 11, 14, '2015-02-28', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 11, 14, '2015-01-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 14, '2015-02-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 11, 14, '2015-02-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 11, 14, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 11, 14, '2015-01-29', 1, 1 ,29);

------------------------------------------------------------- memnum 15일 때 시작 : 여, 80, 25  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 11, 15, '2015-01-29', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 11, 15, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 11, 15, '2015-02-16', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 11, 15, '2015-01-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 11, 15, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 11, 15, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 11, 15, '2015-01-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 11, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 11, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 11, 15, '2015-02-05', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 15, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 11, 15, '2015-01-27', 1, 1 ,6);


------------------------------------------------------------- memnum 16일 때 시작 : 남 , 100, 30  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 11, 16, '2015-01-13', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 11, 16, '2015-01-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 11, 16, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 11, 16, '2015-02-16', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 11, 16, '2015-02-26', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 11, 16, '2015-02-24', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 11, 16, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 11, 16, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 11, 16, '2015-01-08', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 11, 16, '2015-02-17', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 11, 16, '2015-01-17', 1, 1 ,6);

------------------------------------------------------------- memnum 17일 때 시작 : 여, 85, 27  아기옷 : 7



insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 11, 17, '2015-01-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 11, 17, '2015-02-10', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 11, 17, '2015-03-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 11, 17, '2015-03-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 11, 17, '2015-02-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 11, 17, '2015-02-22', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 11, 17, '2015-02-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 17, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 11, 17, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 11, 17, '2015-01-19', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 17, '2015-01-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 11, 17, '2015-02-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 11, 17, '2015-01-20', 1, 1 ,7);


------------------------------------------------------------- memnum 18일 때 시작 : 여, 80, 27


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 11, 18, '2015-01-22', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 11, 18, '2015-02-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 11, 18, '2015-01-17', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 11, 18, '2015-01-24', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 11, 18, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 11, 18, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 11, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 11, 18, '2015-02-23', 1, 1 ,27);


------------------------------------------------------------- memnum 19일 때 시작 : 남 105 , 32 아기옷 7

insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 11, 19, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 11, 19, '2015-01-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 11, 19, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 11, 19, '2015-02-14', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 11, 19, '2015-02-17', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 11, 19, '2015-03-26', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 11, 19, '2015-01-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 11, 19, '2015-02-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 11, 19, '2015-02-21', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 11, 19, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 11, 19, '2015-01-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 11, 19, '2015-01-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 11, 19, '2015-02-11', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 11, 19, '2015-01-11', 1, 1 ,7);


------------------------------------------------------------- memnum 40일 때 시작 : 남 95, 28


insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 11, 20, '2015-01-08', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 11, 20, '2015-01-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 11, 20, '2015-01-19', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 11, 20, '2015-02-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 11, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 11, 20, '2015-03-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 11, 20, '2015-02-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 11, 20, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 11, 20, '2015-02-21', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 11, 20, '2015-01-29', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 11, 20, '2015-01-22', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 11, 20, '2015-01-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 11, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 11, 20, '2015-01-19', 1, 1 ,8);



-------------------------------------------------------------------
-------------------------------------------------------------------




------------------------------------------------------------
---sell 12 : 한남점

insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 12, 1, '2015-01-01', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 12, 1, '2015-01-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 12, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 37000, 0, 12, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 12, 1, '2015-01-13', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 12, 1, '2015-01-05', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 12, 1, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 12, 1, '2015-01-14', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 12, 1, '2015-01-26', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 12, 1, '2015-01-16', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 12, 1, '2015-01-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 12, 1, '2015-01-19', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 12, 1, '2015-01-19', 1, 1 ,75);
------------------------------------------------------------- memnum 22일 때 시작 : 아기옷, 사이즈 6 

insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 12, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 12, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 12, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 12, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 12, 2, '2015-02-12', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 12, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 12, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 12, 2, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 12, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 12, 2, '2015-02-11', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 12, 2, '2015-02-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 12, 2, '2015-02-27', 1, 1 ,6);

------------------------------------------------------------- memnum 23일 때 시작 : 남자옷, 사이즈 105 , 30

insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 12, 3, '2015-01-03', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 12, 3, '2015-01-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 12, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 12, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 12, 3, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 12, 3, '2015-03-18', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 12, 3, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 12, 3, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 12, 3, '2015-02-05', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 12, 3, '2015-02-16', 1, 1 ,105);


------------------------------------------------------------- memnum 4일 때 시작 : 남자옷, 사이즈 95 , 28
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 12, 4, '2015-01-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 12, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 12, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 12, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 12, 4, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 12, 4, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 12, 4, '2015-02-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 12, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 12, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 12, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 12, 4, '2015-01-24', 1, 1 ,95);


------------------------------------------------------------- memnum 5일 때 시작 : 여자옷, 사이즈 80 , 27  ,아기옷 :사이즈 8 
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 12, 5, '2015-01-05', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 12, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 12, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 12, 5, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 12, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 12, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 12, 5, '2015-01-09', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 12, 5, '2015-01-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 12, 5, '2015-01-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 12, 5, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 12, 5, '2015-02-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 12, 5, '2015-01-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 12, 5, '2015-02-26', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 12, 5, '2015-01-26', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 12, 5, '2015-02-26', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 12, 5, '2015-01-19', 1, 1 ,80);
------------------------------------------------------------- memnum 6일 때 시작 : 남자, 105, 32


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 12, 6, '2015-01-06', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 12, 6, '2015-02-16', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 12, 6, '2015-02-16', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 12, 6, '2015-03-05', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 12, 6, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 12, 6, '2015-02-23', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 12, 6, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 12, 6, '2015-02-05', 1, 1 ,32);


------------------------------------------------------------- memnum 7일 때 시작 : 남자, 95, 28 아기옷 : 7


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 12, 7, '2015-01-07', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 12, 7, '2015-02-02', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 12, 7, '2015-02-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 12, 7, '2015-02-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 12, 7, '2015-02-03', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 12, 7, '2015-02-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 12, 7, '2015-02-09', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 12, 7, '2015-04-13', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 12, 7, '2015-01-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 12, 7, '2015-03-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 12, 7, '2015-02-11', 1, 1 ,7);

------------------------------------------------------------- memnum 8일 때 시작 : 여, 85, 29



insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 12, 8, '2015-01-13', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 12, 8, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 12, 8, '2015-01-26', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 12, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 8, '2015-01-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 12, 8, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 12, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 12, 8, '2015-03-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 8, '2015-03-03', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 12, 8, '2015-02-19', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 12, 8, '2015-06-25', 1, 1 ,85);


------------------------------------------------------------- memnum 9 일 때 시작 : 남자, 100, 30


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 12, 9, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 12, 9, '2015-01-05', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 12, 9, '2015-01-27', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 12, 9, '2015-02-21', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 12, 9, '2015-02-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 12, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 12, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 12, 9, '2015-01-14', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 12, 9, '2015-01-14', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 12, 9, '2015-01-17', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 12, 9, '2015-01-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 12, 9, '2015-01-01', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 12, 9, '2015-01-29', 1, 1 ,100);


------------------------------------------------------------- memnum 10일 때 시작 : 여, 75, 25


insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 10, '2015-01-27', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 12, 10, '2015-02-05', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 12, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 12, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 12, 10, '2015-02-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 12, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 10, '2015-01-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 10, '2015-01-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 12, 10, '2015-02-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 10, '2015-02-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 10, '2015-02-16', 1, 1 ,75);


------------------------------------------------------------- memnum 11일 때 시작 : 여, 75, 25 아기옷 8

insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 11, '2015-01-13', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 12, 11, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 12, 11, '2015-03-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 12, 11, '2015-03-11', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 12, 11, '2015-03-29', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 12, 11, '2015-01-03', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 12, 11, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 12, 11, '2015-01-28', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 12, 11, '2015-01-28', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 12, 11, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 12, 11, '2015-02-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 12, 11, '2015-02-14', 1, 1 ,8);

------------------------------------------------------------- memnum 12 일 때 시작 : 남자, 100, 28
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 12, 12, '2015-01-11', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 12, 12, '2015-01-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 12, 12, '2015-01-22', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 12, 12, '2015-02-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 12, 12, '2015-02-19', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 12, 12, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 12, 12, '2015-01-07', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 12, 12, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 12, 12, '2015-01-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 12, 12, '2015-01-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 12, 12, '2015-01-02', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 12, 12, '2015-02-09', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 12, 12, '2015-02-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 12, 12, '2015-01-26', 1, 1 ,28);



------------------------------------------------------------- memnum 13일 때 시작 : 여, 80, 25 

insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 12, 13, '2015-01-07', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 12, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 12, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 13, '2015-01-08', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 12, 13, '2015-01-08', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 12, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 12, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 12, 13, '2015-02-06', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 12, 13, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 13, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 12, 13, '2015-06-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 13, '2015-01-26', 1, 1 ,80);

------------------------------------------------------------- memnum 14일 때 시작 : 여, 85, 29


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 12, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 12, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 14, '2015-02-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 12, 14, '2015-02-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 14, '2015-02-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 12, 14, '2015-02-28', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 12, 14, '2015-01-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 14, '2015-02-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 12, 14, '2015-02-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 12, 14, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 12, 14, '2015-01-29', 1, 1 ,29);

------------------------------------------------------------- memnum 15일 때 시작 : 여, 80, 25  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 12, 15, '2015-01-29', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 12, 15, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 12, 15, '2015-02-16', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 12, 15, '2015-01-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 12, 15, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 12, 15, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 12, 15, '2015-01-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 12, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 12, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 12, 15, '2015-02-05', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 15, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 12, 15, '2015-01-27', 1, 1 ,6);


------------------------------------------------------------- memnum 16일 때 시작 : 남 , 100, 30  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 12, 16, '2015-01-13', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 12, 16, '2015-01-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 12, 16, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 12, 16, '2015-02-16', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 12, 16, '2015-02-26', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 12, 16, '2015-02-24', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 12, 16, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 12, 16, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 12, 16, '2015-01-08', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 12, 16, '2015-02-17', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 12, 16, '2015-01-17', 1, 1 ,6);

------------------------------------------------------------- memnum 17일 때 시작 : 여, 85, 27  아기옷 : 7



insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 12, 17, '2015-01-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 12, 17, '2015-02-10', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 12, 17, '2015-03-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 12, 17, '2015-03-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 12, 17, '2015-02-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 12, 17, '2015-02-22', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 12, 17, '2015-02-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 17, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 12, 17, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 12, 17, '2015-01-19', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 17, '2015-01-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 12, 17, '2015-02-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 12, 17, '2015-01-20', 1, 1 ,7);


------------------------------------------------------------- memnum 18일 때 시작 : 여, 80, 27


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 12, 18, '2015-01-22', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 12, 18, '2015-02-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 12, 18, '2015-01-17', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 12, 18, '2015-01-24', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 12, 18, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 12, 18, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 12, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 12, 18, '2015-02-23', 1, 1 ,27);


------------------------------------------------------------- memnum 19일 때 시작 : 남 105 , 32 아기옷 7

insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 12, 19, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 12, 19, '2015-01-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 12, 19, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 12, 19, '2015-02-14', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 12, 19, '2015-02-17', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 12, 19, '2015-03-26', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 12, 19, '2015-01-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 12, 19, '2015-02-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 12, 19, '2015-02-21', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 12, 19, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 12, 19, '2015-01-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 12, 19, '2015-01-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 12, 19, '2015-02-11', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 12, 19, '2015-01-11', 1, 1 ,7);


------------------------------------------------------------- memnum 40일 때 시작 : 남 95, 28


insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 12, 20, '2015-01-08', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 12, 20, '2015-01-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 12, 20, '2015-01-19', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 12, 20, '2015-02-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 12, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 12, 20, '2015-03-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 12, 20, '2015-02-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 12, 20, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 12, 20, '2015-02-21', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 12, 20, '2015-01-29', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 12, 20, '2015-01-22', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 12, 20, '2015-01-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 12, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 12, 20, '2015-01-19', 1, 1 ,8);



----------------------------------------------------
-----------------------------------------------







------------------------------------------------------------
---sell 13 : 옥수점

insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 13, 1, '2015-01-01', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 13, 1, '2015-01-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 13, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 37000, 0, 13, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 13, 1, '2015-01-13', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 13, 1, '2015-01-05', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 13, 1, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 13, 1, '2015-01-14', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 13, 1, '2015-01-26', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 13, 1, '2015-01-16', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 13, 1, '2015-01-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 13, 1, '2015-01-19', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 13, 1, '2015-01-19', 1, 1 ,75);
------------------------------------------------------------- memnum 22일 때 시작 : 아기옷, 사이즈 6 

insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 13, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 13, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 13, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 13, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 13, 2, '2015-02-12', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 13, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 13, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 13, 2, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 13, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 13, 2, '2015-02-11', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 13, 2, '2015-02-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 13, 2, '2015-02-27', 1, 1 ,6);

------------------------------------------------------------- memnum 23일 때 시작 : 남자옷, 사이즈 105 , 30

insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 13, 3, '2015-01-03', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 13, 3, '2015-01-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 13, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 13, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 13, 3, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 13, 3, '2015-03-18', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 13, 3, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 13, 3, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 13, 3, '2015-02-05', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 13, 3, '2015-02-16', 1, 1 ,105);


------------------------------------------------------------- memnum 4일 때 시작 : 남자옷, 사이즈 95 , 28
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 13, 4, '2015-01-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 13, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 13, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 13, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 13, 4, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 13, 4, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 13, 4, '2015-02-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 13, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 13, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 13, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 13, 4, '2015-01-24', 1, 1 ,95);


------------------------------------------------------------- memnum 5일 때 시작 : 여자옷, 사이즈 80 , 27  ,아기옷 :사이즈 8 
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 13, 5, '2015-01-05', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 13, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 13, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 13, 5, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 13, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 13, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 13, 5, '2015-01-09', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 13, 5, '2015-01-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 13, 5, '2015-01-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 13, 5, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 13, 5, '2015-02-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 13, 5, '2015-01-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 13, 5, '2015-02-26', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 13, 5, '2015-01-26', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 13, 5, '2015-02-26', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 13, 5, '2015-01-19', 1, 1 ,80);
------------------------------------------------------------- memnum 6일 때 시작 : 남자, 105, 32


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 13, 6, '2015-01-06', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 13, 6, '2015-02-16', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 13, 6, '2015-02-16', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 13, 6, '2015-03-05', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 13, 6, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 13, 6, '2015-02-23', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 13, 6, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 13, 6, '2015-02-05', 1, 1 ,32);


------------------------------------------------------------- memnum 7일 때 시작 : 남자, 95, 28 아기옷 : 7


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 13, 7, '2015-01-07', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 13, 7, '2015-02-02', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 13, 7, '2015-02-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 13, 7, '2015-02-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 13, 7, '2015-02-03', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 13, 7, '2015-02-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 13, 7, '2015-02-09', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 13, 7, '2015-04-13', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 13, 7, '2015-01-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 13, 7, '2015-03-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 13, 7, '2015-02-11', 1, 1 ,7);

------------------------------------------------------------- memnum 8일 때 시작 : 여, 85, 29



insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 13, 8, '2015-01-13', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 13, 8, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 13, 8, '2015-01-26', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 13, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 8, '2015-01-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 13, 8, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 13, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 13, 8, '2015-03-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 8, '2015-03-03', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 13, 8, '2015-02-19', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 13, 8, '2015-06-25', 1, 1 ,85);


------------------------------------------------------------- memnum 9 일 때 시작 : 남자, 100, 30


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 13, 9, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 13, 9, '2015-01-05', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 13, 9, '2015-01-27', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 13, 9, '2015-02-21', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 13, 9, '2015-02-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 13, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 13, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 13, 9, '2015-01-14', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 13, 9, '2015-01-14', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 13, 9, '2015-01-17', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 13, 9, '2015-01-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 13, 9, '2015-01-01', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 13, 9, '2015-01-29', 1, 1 ,100);


------------------------------------------------------------- memnum 10일 때 시작 : 여, 75, 25


insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 10, '2015-01-27', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 13, 10, '2015-02-05', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 13, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 13, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 13, 10, '2015-02-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 13, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 10, '2015-01-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 10, '2015-01-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 13, 10, '2015-02-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 10, '2015-02-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 10, '2015-02-16', 1, 1 ,75);


------------------------------------------------------------- memnum 11일 때 시작 : 여, 75, 25 아기옷 8

insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 11, '2015-01-13', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 13, 11, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 13, 11, '2015-03-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 13, 11, '2015-03-11', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 13, 11, '2015-03-29', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 13, 11, '2015-01-03', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 13, 11, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 13, 11, '2015-01-28', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 13, 11, '2015-01-28', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 13, 11, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 13, 11, '2015-02-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 13, 11, '2015-02-14', 1, 1 ,8);

------------------------------------------------------------- memnum 12 일 때 시작 : 남자, 100, 28
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 13, 12, '2015-01-11', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 13, 12, '2015-01-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 13, 12, '2015-01-22', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 13, 12, '2015-02-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 13, 12, '2015-02-19', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 13, 12, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 13, 12, '2015-01-07', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 13, 12, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 13, 12, '2015-01-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 13, 12, '2015-01-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 13, 12, '2015-01-02', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 13, 12, '2015-02-09', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 13, 12, '2015-02-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 13, 12, '2015-01-26', 1, 1 ,28);



------------------------------------------------------------- memnum 13일 때 시작 : 여, 80, 25 

insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 13, 13, '2015-01-07', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 13, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 13, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 13, '2015-01-08', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 13, 13, '2015-01-08', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 13, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 13, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 13, 13, '2015-02-06', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 13, 13, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 13, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 13, 13, '2015-06-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 13, '2015-01-26', 1, 1 ,80);

------------------------------------------------------------- memnum 14일 때 시작 : 여, 85, 29


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 13, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 13, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 14, '2015-02-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 13, 14, '2015-02-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 14, '2015-02-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 13, 14, '2015-02-28', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 13, 14, '2015-01-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 14, '2015-02-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 13, 14, '2015-02-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 13, 14, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 13, 14, '2015-01-29', 1, 1 ,29);

------------------------------------------------------------- memnum 15일 때 시작 : 여, 80, 25  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 13, 15, '2015-01-29', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 13, 15, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 13, 15, '2015-02-16', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 13, 15, '2015-01-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 13, 15, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 13, 15, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 13, 15, '2015-01-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 13, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 13, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 13, 15, '2015-02-05', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 15, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 13, 15, '2015-01-27', 1, 1 ,6);


------------------------------------------------------------- memnum 16일 때 시작 : 남 , 100, 30  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 13, 16, '2015-01-13', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 13, 16, '2015-01-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 13, 16, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 13, 16, '2015-02-16', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 13, 16, '2015-02-26', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 13, 16, '2015-02-24', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 13, 16, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 13, 16, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 13, 16, '2015-01-08', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 13, 16, '2015-02-17', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 13, 16, '2015-01-17', 1, 1 ,6);

------------------------------------------------------------- memnum 17일 때 시작 : 여, 85, 27  아기옷 : 7



insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 13, 17, '2015-01-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 13, 17, '2015-02-10', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 13, 17, '2015-03-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 13, 17, '2015-03-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 13, 17, '2015-02-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 13, 17, '2015-02-22', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 13, 17, '2015-02-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 17, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 13, 17, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 13, 17, '2015-01-19', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 17, '2015-01-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 13, 17, '2015-02-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 13, 17, '2015-01-20', 1, 1 ,7);


------------------------------------------------------------- memnum 18일 때 시작 : 여, 80, 27


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 13, 18, '2015-01-22', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 13, 18, '2015-02-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 13, 18, '2015-01-17', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 13, 18, '2015-01-24', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 13, 18, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 13, 18, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 13, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 13, 18, '2015-02-23', 1, 1 ,27);


------------------------------------------------------------- memnum 19일 때 시작 : 남 105 , 32 아기옷 7

insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 13, 19, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 13, 19, '2015-01-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 13, 19, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 13, 19, '2015-02-14', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 13, 19, '2015-02-17', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 13, 19, '2015-03-26', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 13, 19, '2015-01-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 13, 19, '2015-02-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 13, 19, '2015-02-21', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 13, 19, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 13, 19, '2015-01-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 13, 19, '2015-01-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 13, 19, '2015-02-11', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 13, 19, '2015-01-11', 1, 1 ,7);


------------------------------------------------------------- memnum 40일 때 시작 : 남 95, 28


insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 13, 20, '2015-01-08', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 13, 20, '2015-01-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 13, 20, '2015-01-19', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 13, 20, '2015-02-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 13, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 13, 20, '2015-03-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 13, 20, '2015-02-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 13, 20, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 13, 20, '2015-02-21', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 13, 20, '2015-01-29', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 13, 20, '2015-01-22', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 13, 20, '2015-01-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 13, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 13, 20, '2015-01-19', 1, 1 ,8);




-----------------------------------
-----------------------------------




------------------------------------------------------------
---sell 14 : 약수점

insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 14, 1, '2015-01-01', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 14, 1, '2015-01-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 14, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 37000, 0, 14, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 14, 1, '2015-01-13', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 14, 1, '2015-01-05', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 14, 1, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 14, 1, '2015-01-14', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 14, 1, '2015-01-26', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 14, 1, '2015-01-16', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 14, 1, '2015-01-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 14, 1, '2015-01-19', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 14, 1, '2015-01-19', 1, 1 ,75);
------------------------------------------------------------- memnum 22일 때 시작 : 아기옷, 사이즈 6 

insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 14, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 14, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 14, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 14, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 14, 2, '2015-02-12', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 14, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 14, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 14, 2, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 14, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 14, 2, '2015-02-11', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 14, 2, '2015-02-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 14, 2, '2015-02-27', 1, 1 ,6);

------------------------------------------------------------- memnum 23일 때 시작 : 남자옷, 사이즈 105 , 30

insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 14, 3, '2015-01-03', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 14, 3, '2015-01-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 14, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 14, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 14, 3, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 14, 3, '2015-03-18', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 14, 3, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 14, 3, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 14, 3, '2015-02-05', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 14, 3, '2015-02-16', 1, 1 ,105);


------------------------------------------------------------- memnum 4일 때 시작 : 남자옷, 사이즈 95 , 28
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 14, 4, '2015-01-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 14, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 14, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 14, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 14, 4, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 14, 4, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 14, 4, '2015-02-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 14, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 14, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 14, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 14, 4, '2015-01-24', 1, 1 ,95);


------------------------------------------------------------- memnum 5일 때 시작 : 여자옷, 사이즈 80 , 27  ,아기옷 :사이즈 8 
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 14, 5, '2015-01-05', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 14, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 14, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 14, 5, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 14, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 14, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 14, 5, '2015-01-09', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 14, 5, '2015-01-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 14, 5, '2015-01-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 14, 5, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 14, 5, '2015-02-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 14, 5, '2015-01-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 14, 5, '2015-02-26', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 14, 5, '2015-01-26', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 14, 5, '2015-02-26', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 14, 5, '2015-01-19', 1, 1 ,80);
------------------------------------------------------------- memnum 6일 때 시작 : 남자, 105, 32


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 14, 6, '2015-01-06', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 14, 6, '2015-02-16', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 14, 6, '2015-02-16', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 14, 6, '2015-03-05', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 14, 6, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 14, 6, '2015-02-23', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 14, 6, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 14, 6, '2015-02-05', 1, 1 ,32);


------------------------------------------------------------- memnum 7일 때 시작 : 남자, 95, 28 아기옷 : 7


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 14, 7, '2015-01-07', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 14, 7, '2015-02-02', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 14, 7, '2015-02-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 14, 7, '2015-02-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 14, 7, '2015-02-03', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 14, 7, '2015-02-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 14, 7, '2015-02-09', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 14, 7, '2015-04-13', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 14, 7, '2015-01-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 14, 7, '2015-03-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 14, 7, '2015-02-11', 1, 1 ,7);

------------------------------------------------------------- memnum 8일 때 시작 : 여, 85, 29



insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 14, 8, '2015-01-13', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 14, 8, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 14, 8, '2015-01-26', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 14, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 8, '2015-01-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 14, 8, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 14, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 14, 8, '2015-03-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 8, '2015-03-03', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 14, 8, '2015-02-19', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 14, 8, '2015-06-25', 1, 1 ,85);


------------------------------------------------------------- memnum 9 일 때 시작 : 남자, 100, 30


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 14, 9, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 14, 9, '2015-01-05', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 14, 9, '2015-01-27', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 14, 9, '2015-02-21', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 14, 9, '2015-02-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 14, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 14, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 14, 9, '2015-01-14', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 14, 9, '2015-01-14', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 14, 9, '2015-01-17', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 14, 9, '2015-01-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 14, 9, '2015-01-01', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 14, 9, '2015-01-29', 1, 1 ,100);


------------------------------------------------------------- memnum 10일 때 시작 : 여, 75, 25


insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 10, '2015-01-27', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 14, 10, '2015-02-05', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 14, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 14, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 14, 10, '2015-02-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 14, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 10, '2015-01-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 10, '2015-01-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 14, 10, '2015-02-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 10, '2015-02-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 10, '2015-02-16', 1, 1 ,75);


------------------------------------------------------------- memnum 11일 때 시작 : 여, 75, 25 아기옷 8

insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 11, '2015-01-13', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 14, 11, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 14, 11, '2015-03-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 14, 11, '2015-03-11', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 14, 11, '2015-03-29', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 14, 11, '2015-01-03', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 14, 11, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 14, 11, '2015-01-28', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 14, 11, '2015-01-28', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 14, 11, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 14, 11, '2015-02-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 14, 11, '2015-02-14', 1, 1 ,8);

------------------------------------------------------------- memnum 12 일 때 시작 : 남자, 100, 28
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 14, 12, '2015-01-11', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 14, 12, '2015-01-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 14, 12, '2015-01-22', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 14, 12, '2015-02-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 14, 12, '2015-02-19', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 14, 12, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 14, 12, '2015-01-07', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 14, 12, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 14, 12, '2015-01-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 14, 12, '2015-01-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 14, 12, '2015-01-02', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 14, 12, '2015-02-09', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 14, 12, '2015-02-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 14, 12, '2015-01-26', 1, 1 ,28);



------------------------------------------------------------- memnum 13일 때 시작 : 여, 80, 25 

insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 14, 13, '2015-01-07', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 14, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 14, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 13, '2015-01-08', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 14, 13, '2015-01-08', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 14, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 14, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 14, 13, '2015-02-06', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 14, 13, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 13, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 14, 13, '2015-06-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 13, '2015-01-26', 1, 1 ,80);

------------------------------------------------------------- memnum 14일 때 시작 : 여, 85, 29


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 14, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 14, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 14, '2015-02-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 14, 14, '2015-02-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 14, '2015-02-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 14, 14, '2015-02-28', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 14, 14, '2015-01-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 14, '2015-02-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 14, 14, '2015-02-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 14, 14, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 14, 14, '2015-01-29', 1, 1 ,29);

------------------------------------------------------------- memnum 15일 때 시작 : 여, 80, 25  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 14, 15, '2015-01-29', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 14, 15, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 14, 15, '2015-02-16', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 14, 15, '2015-01-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 14, 15, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 14, 15, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 14, 15, '2015-01-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 14, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 14, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 14, 15, '2015-02-05', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 15, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 14, 15, '2015-01-27', 1, 1 ,6);


------------------------------------------------------------- memnum 16일 때 시작 : 남 , 100, 30  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 14, 16, '2015-01-13', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 14, 16, '2015-01-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 14, 16, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 14, 16, '2015-02-16', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 14, 16, '2015-02-26', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 14, 16, '2015-02-24', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 14, 16, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 14, 16, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 14, 16, '2015-01-08', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 14, 16, '2015-02-17', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 14, 16, '2015-01-17', 1, 1 ,6);

------------------------------------------------------------- memnum 17일 때 시작 : 여, 85, 27  아기옷 : 7



insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 14, 17, '2015-01-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 14, 17, '2015-02-10', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 14, 17, '2015-03-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 14, 17, '2015-03-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 14, 17, '2015-02-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 14, 17, '2015-02-22', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 14, 17, '2015-02-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 17, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 14, 17, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 14, 17, '2015-01-19', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 17, '2015-01-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 14, 17, '2015-02-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 14, 17, '2015-01-20', 1, 1 ,7);


------------------------------------------------------------- memnum 18일 때 시작 : 여, 80, 27


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 14, 18, '2015-01-22', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 14, 18, '2015-02-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 14, 18, '2015-01-17', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 14, 18, '2015-01-24', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 14, 18, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 14, 18, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 14, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 14, 18, '2015-02-23', 1, 1 ,27);


------------------------------------------------------------- memnum 19일 때 시작 : 남 105 , 32 아기옷 7

insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 14, 19, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 14, 19, '2015-01-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 14, 19, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 14, 19, '2015-02-14', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 14, 19, '2015-02-17', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 14, 19, '2015-03-26', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 14, 19, '2015-01-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 14, 19, '2015-02-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 14, 19, '2015-02-21', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 14, 19, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 14, 19, '2015-01-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 14, 19, '2015-01-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 14, 19, '2015-02-11', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 14, 19, '2015-01-11', 1, 1 ,7);


------------------------------------------------------------- memnum 40일 때 시작 : 남 95, 28


insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 14, 20, '2015-01-08', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 14, 20, '2015-01-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 14, 20, '2015-01-19', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 14, 20, '2015-02-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 14, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 14, 20, '2015-03-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 14, 20, '2015-02-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 14, 20, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 14, 20, '2015-02-21', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 14, 20, '2015-01-29', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 14, 20, '2015-01-22', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 14, 20, '2015-01-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 14, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 14, 20, '2015-01-19', 1, 1 ,8);


-----------------------------------------
-----------------------------------------





------------------------------------------------------------
---sell 15 : 왕십리점

insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 15, 1, '2015-01-01', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 15, 1, '2015-01-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 15, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 37000, 0, 15, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 15, 1, '2015-01-13', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 15, 1, '2015-01-05', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 15, 1, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 15, 1, '2015-01-14', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 15, 1, '2015-01-26', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 15, 1, '2015-01-16', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 15, 1, '2015-01-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 15, 1, '2015-01-19', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 15, 1, '2015-01-19', 1, 1 ,75);
------------------------------------------------------------- memnum 22일 때 시작 : 아기옷, 사이즈 6 

insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 15, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 15, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 15, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 15, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 15, 2, '2015-02-12', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 15, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 15, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 15, 2, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 15, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 15, 2, '2015-02-11', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 15, 2, '2015-02-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 15, 2, '2015-02-27', 1, 1 ,6);

------------------------------------------------------------- memnum 23일 때 시작 : 남자옷, 사이즈 105 , 30

insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 15, 3, '2015-01-03', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 15, 3, '2015-01-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 15, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 15, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 15, 3, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 15, 3, '2015-03-18', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 15, 3, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 15, 3, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 15, 3, '2015-02-05', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 15, 3, '2015-02-16', 1, 1 ,105);


------------------------------------------------------------- memnum 4일 때 시작 : 남자옷, 사이즈 95 , 28
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 15, 4, '2015-01-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 15, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 15, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 15, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 15, 4, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 15, 4, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 15, 4, '2015-02-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 15, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 15, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 15, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 15, 4, '2015-01-24', 1, 1 ,95);


------------------------------------------------------------- memnum 5일 때 시작 : 여자옷, 사이즈 80 , 27  ,아기옷 :사이즈 8 
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 15, 5, '2015-01-05', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 15, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 15, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 15, 5, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 15, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 15, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 15, 5, '2015-01-09', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 15, 5, '2015-01-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 15, 5, '2015-01-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 15, 5, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 15, 5, '2015-02-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 15, 5, '2015-01-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 15, 5, '2015-02-26', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 15, 5, '2015-01-26', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 15, 5, '2015-02-26', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 15, 5, '2015-01-19', 1, 1 ,80);
------------------------------------------------------------- memnum 6일 때 시작 : 남자, 105, 32


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 15, 6, '2015-01-06', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 15, 6, '2015-02-16', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 15, 6, '2015-02-16', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 15, 6, '2015-03-05', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 15, 6, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 15, 6, '2015-02-23', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 15, 6, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 15, 6, '2015-02-05', 1, 1 ,32);


------------------------------------------------------------- memnum 7일 때 시작 : 남자, 95, 28 아기옷 : 7


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 15, 7, '2015-01-07', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 15, 7, '2015-02-02', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 15, 7, '2015-02-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 15, 7, '2015-02-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 15, 7, '2015-02-03', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 15, 7, '2015-02-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 15, 7, '2015-02-09', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 15, 7, '2015-04-13', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 15, 7, '2015-01-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 15, 7, '2015-03-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 15, 7, '2015-02-11', 1, 1 ,7);

------------------------------------------------------------- memnum 8일 때 시작 : 여, 85, 29



insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 15, 8, '2015-01-13', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 15, 8, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 15, 8, '2015-01-26', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 15, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 8, '2015-01-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 15, 8, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 15, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 15, 8, '2015-03-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 8, '2015-03-03', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 15, 8, '2015-02-19', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 15, 8, '2015-06-25', 1, 1 ,85);


------------------------------------------------------------- memnum 9 일 때 시작 : 남자, 100, 30


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 15, 9, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 15, 9, '2015-01-05', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 15, 9, '2015-01-27', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 15, 9, '2015-02-21', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 15, 9, '2015-02-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 15, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 15, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 15, 9, '2015-01-14', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 15, 9, '2015-01-14', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 15, 9, '2015-01-17', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 15, 9, '2015-01-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 15, 9, '2015-01-01', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 15, 9, '2015-01-29', 1, 1 ,100);


------------------------------------------------------------- memnum 10일 때 시작 : 여, 75, 25


insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 10, '2015-01-27', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 15, 10, '2015-02-05', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 15, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 15, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 15, 10, '2015-02-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 15, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 10, '2015-01-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 10, '2015-01-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 15, 10, '2015-02-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 10, '2015-02-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 10, '2015-02-16', 1, 1 ,75);


------------------------------------------------------------- memnum 11일 때 시작 : 여, 75, 25 아기옷 8

insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 11, '2015-01-13', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 15, 11, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 15, 11, '2015-03-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 15, 11, '2015-03-11', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 15, 11, '2015-03-29', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 15, 11, '2015-01-03', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 15, 11, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 15, 11, '2015-01-28', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 15, 11, '2015-01-28', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 15, 11, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 15, 11, '2015-02-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 15, 11, '2015-02-14', 1, 1 ,8);

------------------------------------------------------------- memnum 12 일 때 시작 : 남자, 100, 28
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 15, 12, '2015-01-11', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 15, 12, '2015-01-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 15, 12, '2015-01-22', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 15, 12, '2015-02-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 15, 12, '2015-02-19', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 15, 12, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 15, 12, '2015-01-07', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 15, 12, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 15, 12, '2015-01-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 15, 12, '2015-01-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 15, 12, '2015-01-02', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 15, 12, '2015-02-09', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 15, 12, '2015-02-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 15, 12, '2015-01-26', 1, 1 ,28);



------------------------------------------------------------- memnum 13일 때 시작 : 여, 80, 25 

insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 15, 13, '2015-01-07', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 15, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 15, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 13, '2015-01-08', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 15, 13, '2015-01-08', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 15, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 15, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 15, 13, '2015-02-06', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 15, 13, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 13, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 15, 13, '2015-06-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 13, '2015-01-26', 1, 1 ,80);

------------------------------------------------------------- memnum 14일 때 시작 : 여, 85, 29


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 15, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 15, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 14, '2015-02-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 15, 14, '2015-02-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 14, '2015-02-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 15, 14, '2015-02-28', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 15, 14, '2015-01-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 14, '2015-02-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 15, 14, '2015-02-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 15, 14, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 15, 14, '2015-01-29', 1, 1 ,29);

------------------------------------------------------------- memnum 15일 때 시작 : 여, 80, 25  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 15, 15, '2015-01-29', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 15, 15, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 15, 15, '2015-02-16', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 15, 15, '2015-01-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 15, 15, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 15, 15, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 15, 15, '2015-01-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 15, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 15, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 15, 15, '2015-02-05', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 15, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 15, 15, '2015-01-27', 1, 1 ,6);


------------------------------------------------------------- memnum 16일 때 시작 : 남 , 100, 30  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 15, 16, '2015-01-13', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 15, 16, '2015-01-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 15, 16, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 15, 16, '2015-02-16', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 15, 16, '2015-02-26', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 15, 16, '2015-02-24', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 15, 16, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 15, 16, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 15, 16, '2015-01-08', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 15, 16, '2015-02-17', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 15, 16, '2015-01-17', 1, 1 ,6);

------------------------------------------------------------- memnum 17일 때 시작 : 여, 85, 27  아기옷 : 7



insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 15, 17, '2015-01-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 15, 17, '2015-02-10', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 15, 17, '2015-03-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 15, 17, '2015-03-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 15, 17, '2015-02-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 15, 17, '2015-02-22', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 15, 17, '2015-02-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 17, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 15, 17, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 15, 17, '2015-01-19', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 17, '2015-01-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 15, 17, '2015-02-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 15, 17, '2015-01-20', 1, 1 ,7);


------------------------------------------------------------- memnum 18일 때 시작 : 여, 80, 27


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 15, 18, '2015-01-22', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 15, 18, '2015-02-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 15, 18, '2015-01-17', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 15, 18, '2015-01-24', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 15, 18, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 15, 18, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 15, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 15, 18, '2015-02-23', 1, 1 ,27);


------------------------------------------------------------- memnum 19일 때 시작 : 남 105 , 32 아기옷 7

insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 15, 19, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 15, 19, '2015-01-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 15, 19, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 15, 19, '2015-02-14', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 15, 19, '2015-02-17', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 15, 19, '2015-03-26', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 15, 19, '2015-01-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 15, 19, '2015-02-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 15, 19, '2015-02-21', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 15, 19, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 15, 19, '2015-01-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 15, 19, '2015-01-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 15, 19, '2015-02-11', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 15, 19, '2015-01-11', 1, 1 ,7);


------------------------------------------------------------- memnum 40일 때 시작 : 남 95, 28


insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 15, 20, '2015-01-08', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 15, 20, '2015-01-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 15, 20, '2015-01-19', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 15, 20, '2015-02-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 15, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 15, 20, '2015-03-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 15, 20, '2015-02-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 15, 20, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 15, 20, '2015-02-21', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 15, 20, '2015-01-29', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 15, 20, '2015-01-22', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 15, 20, '2015-01-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 15, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 15, 20, '2015-01-19', 1, 1 ,8);




----------------------
----------------------




------------------------------------------------------------
---sell 16 : 의정부점

insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 16, 1, '2015-01-01', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 16, 1, '2015-01-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 16, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 37000, 0, 16, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 16, 1, '2015-01-13', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 16, 1, '2015-01-05', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 16, 1, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 16, 1, '2015-01-14', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 16, 1, '2015-01-26', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 16, 1, '2015-01-16', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 16, 1, '2015-01-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 16, 1, '2015-01-19', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 16, 1, '2015-01-19', 1, 1 ,75);
------------------------------------------------------------- memnum 22일 때 시작 : 아기옷, 사이즈 6 

insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 16, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 16, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 16, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 16, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 16, 2, '2015-02-12', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 16, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 16, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 16, 2, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 16, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 16, 2, '2015-02-11', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 16, 2, '2015-02-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 16, 2, '2015-02-27', 1, 1 ,6);

------------------------------------------------------------- memnum 23일 때 시작 : 남자옷, 사이즈 105 , 30

insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 16, 3, '2015-01-03', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 16, 3, '2015-01-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 16, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 16, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 16, 3, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 16, 3, '2015-03-18', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 16, 3, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 16, 3, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 16, 3, '2015-02-05', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 16, 3, '2015-02-16', 1, 1 ,105);


------------------------------------------------------------- memnum 4일 때 시작 : 남자옷, 사이즈 95 , 28
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 16, 4, '2015-01-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 16, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 16, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 16, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 16, 4, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 16, 4, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 16, 4, '2015-02-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 16, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 16, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 16, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 16, 4, '2015-01-24', 1, 1 ,95);


------------------------------------------------------------- memnum 5일 때 시작 : 여자옷, 사이즈 80 , 27  ,아기옷 :사이즈 8 
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 16, 5, '2015-01-05', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 16, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 16, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 16, 5, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 16, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 16, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 16, 5, '2015-01-09', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 16, 5, '2015-01-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 16, 5, '2015-01-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 16, 5, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 16, 5, '2015-02-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 16, 5, '2015-01-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 16, 5, '2015-02-26', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 16, 5, '2015-01-26', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 16, 5, '2015-02-26', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 16, 5, '2015-01-19', 1, 1 ,80);
------------------------------------------------------------- memnum 6일 때 시작 : 남자, 105, 32


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 16, 6, '2015-01-06', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 16, 6, '2015-02-16', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 16, 6, '2015-02-16', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 16, 6, '2015-03-05', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 16, 6, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 16, 6, '2015-02-23', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 16, 6, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 16, 6, '2015-02-05', 1, 1 ,32);


------------------------------------------------------------- memnum 7일 때 시작 : 남자, 95, 28 아기옷 : 7


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 16, 7, '2015-01-07', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 16, 7, '2015-02-02', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 16, 7, '2015-02-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 16, 7, '2015-02-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 16, 7, '2015-02-03', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 16, 7, '2015-02-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 16, 7, '2015-02-09', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 16, 7, '2015-04-13', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 16, 7, '2015-01-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 16, 7, '2015-03-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 16, 7, '2015-02-11', 1, 1 ,7);

------------------------------------------------------------- memnum 8일 때 시작 : 여, 85, 29



insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 16, 8, '2015-01-13', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 16, 8, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 16, 8, '2015-01-26', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 16, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 8, '2015-01-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 16, 8, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 16, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 16, 8, '2015-03-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 8, '2015-03-03', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 16, 8, '2015-02-19', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 16, 8, '2015-06-25', 1, 1 ,85);


------------------------------------------------------------- memnum 9 일 때 시작 : 남자, 100, 30


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 16, 9, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 16, 9, '2015-01-05', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 16, 9, '2015-01-27', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 16, 9, '2015-02-21', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 16, 9, '2015-02-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 16, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 16, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 16, 9, '2015-01-14', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 16, 9, '2015-01-14', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 16, 9, '2015-01-17', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 16, 9, '2015-01-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 16, 9, '2015-01-01', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 16, 9, '2015-01-29', 1, 1 ,100);


------------------------------------------------------------- memnum 10일 때 시작 : 여, 75, 25


insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 10, '2015-01-27', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 16, 10, '2015-02-05', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 16, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 16, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 16, 10, '2015-02-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 16, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 10, '2015-01-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 10, '2015-01-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 16, 10, '2015-02-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 10, '2015-02-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 10, '2015-02-16', 1, 1 ,75);


------------------------------------------------------------- memnum 11일 때 시작 : 여, 75, 25 아기옷 8

insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 11, '2015-01-13', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 16, 11, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 16, 11, '2015-03-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 16, 11, '2015-03-11', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 16, 11, '2015-03-29', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 16, 11, '2015-01-03', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 16, 11, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 16, 11, '2015-01-28', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 16, 11, '2015-01-28', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 16, 11, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 16, 11, '2015-02-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 16, 11, '2015-02-14', 1, 1 ,8);

------------------------------------------------------------- memnum 12 일 때 시작 : 남자, 100, 28
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 16, 12, '2015-01-11', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 16, 12, '2015-01-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 16, 12, '2015-01-22', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 16, 12, '2015-02-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 16, 12, '2015-02-19', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 16, 12, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 16, 12, '2015-01-07', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 16, 12, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 16, 12, '2015-01-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 16, 12, '2015-01-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 16, 12, '2015-01-02', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 16, 12, '2015-02-09', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 16, 12, '2015-02-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 16, 12, '2015-01-26', 1, 1 ,28);



------------------------------------------------------------- memnum 13일 때 시작 : 여, 80, 25 

insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 16, 13, '2015-01-07', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 16, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 16, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 13, '2015-01-08', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 16, 13, '2015-01-08', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 16, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 16, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 16, 13, '2015-02-06', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 16, 13, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 13, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 16, 13, '2015-06-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 13, '2015-01-26', 1, 1 ,80);

------------------------------------------------------------- memnum 14일 때 시작 : 여, 85, 29


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 16, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 16, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 14, '2015-02-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 16, 14, '2015-02-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 14, '2015-02-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 16, 14, '2015-02-28', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 16, 14, '2015-01-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 14, '2015-02-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 16, 14, '2015-02-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 16, 14, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 16, 14, '2015-01-29', 1, 1 ,29);

------------------------------------------------------------- memnum 15일 때 시작 : 여, 80, 25  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 16, 15, '2015-01-29', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 16, 15, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 16, 15, '2015-02-16', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 16, 15, '2015-01-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 16, 15, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 16, 15, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 16, 15, '2015-01-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 16, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 16, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 16, 15, '2015-02-05', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 15, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 16, 15, '2015-01-27', 1, 1 ,6);


------------------------------------------------------------- memnum 16일 때 시작 : 남 , 100, 30  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 16, 16, '2015-01-13', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 16, 16, '2015-01-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 16, 16, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 16, 16, '2015-02-16', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 16, 16, '2015-02-26', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 16, 16, '2015-02-24', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 16, 16, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 16, 16, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 16, 16, '2015-01-08', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 16, 16, '2015-02-17', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 16, 16, '2015-01-17', 1, 1 ,6);

------------------------------------------------------------- memnum 17일 때 시작 : 여, 85, 27  아기옷 : 7



insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 16, 17, '2015-01-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 16, 17, '2015-02-10', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 16, 17, '2015-03-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 16, 17, '2015-03-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 16, 17, '2015-02-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 16, 17, '2015-02-22', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 16, 17, '2015-02-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 17, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 16, 17, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 16, 17, '2015-01-19', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 17, '2015-01-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 16, 17, '2015-02-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 16, 17, '2015-01-20', 1, 1 ,7);


------------------------------------------------------------- memnum 18일 때 시작 : 여, 80, 27


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 16, 18, '2015-01-22', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 16, 18, '2015-02-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 16, 18, '2015-01-17', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 16, 18, '2015-01-24', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 16, 18, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 16, 18, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 16, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 16, 18, '2015-02-23', 1, 1 ,27);


------------------------------------------------------------- memnum 19일 때 시작 : 남 105 , 32 아기옷 7

insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 16, 19, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 16, 19, '2015-01-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 16, 19, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 16, 19, '2015-02-14', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 16, 19, '2015-02-17', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 16, 19, '2015-03-26', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 16, 19, '2015-01-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 16, 19, '2015-02-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 16, 19, '2015-02-21', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 16, 19, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 16, 19, '2015-01-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 16, 19, '2015-01-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 16, 19, '2015-02-11', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 16, 19, '2015-01-11', 1, 1 ,7);


------------------------------------------------------------- memnum 40일 때 시작 : 남 95, 28


insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 16, 20, '2015-01-08', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 16, 20, '2015-01-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 16, 20, '2015-01-19', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 16, 20, '2015-02-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 16, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 16, 20, '2015-03-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 16, 20, '2015-02-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 16, 20, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 16, 20, '2015-02-21', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 16, 20, '2015-01-29', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 16, 20, '2015-01-22', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 16, 20, '2015-01-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 16, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 16, 20, '2015-01-19', 1, 1 ,8);


--------------------------------
---------------------------------






------------------------------------------------------------
---sell 17 : 남양주점

insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 17, 1, '2015-01-01', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 17, 1, '2015-01-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 17, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 37000, 0, 17, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 17, 1, '2015-01-13', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 17, 1, '2015-01-05', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 17, 1, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 17, 1, '2015-01-14', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 17, 1, '2015-01-26', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 17, 1, '2015-01-16', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 17, 1, '2015-01-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 17, 1, '2015-01-19', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 17, 1, '2015-01-19', 1, 1 ,75);
------------------------------------------------------------- memnum 22일 때 시작 : 아기옷, 사이즈 6 

insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 17, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 17, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 17, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 17, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 17, 2, '2015-02-12', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 17, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 17, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 17, 2, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 17, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 17, 2, '2015-02-11', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 17, 2, '2015-02-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 17, 2, '2015-02-27', 1, 1 ,6);

------------------------------------------------------------- memnum 23일 때 시작 : 남자옷, 사이즈 105 , 30

insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 17, 3, '2015-01-03', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 17, 3, '2015-01-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 17, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 17, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 17, 3, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 17, 3, '2015-03-18', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 17, 3, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 17, 3, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 17, 3, '2015-02-05', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 17, 3, '2015-02-16', 1, 1 ,105);


------------------------------------------------------------- memnum 4일 때 시작 : 남자옷, 사이즈 95 , 28
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 17, 4, '2015-01-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 17, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 17, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 17, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 17, 4, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 17, 4, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 17, 4, '2015-02-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 17, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 17, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 17, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 17, 4, '2015-01-24', 1, 1 ,95);


------------------------------------------------------------- memnum 5일 때 시작 : 여자옷, 사이즈 80 , 27  ,아기옷 :사이즈 8 
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 17, 5, '2015-01-05', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 17, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 17, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 17, 5, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 17, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 17, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 17, 5, '2015-01-09', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 17, 5, '2015-01-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 17, 5, '2015-01-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 17, 5, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 17, 5, '2015-02-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 17, 5, '2015-01-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 17, 5, '2015-02-26', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 17, 5, '2015-01-26', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 17, 5, '2015-02-26', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 17, 5, '2015-01-19', 1, 1 ,80);
------------------------------------------------------------- memnum 6일 때 시작 : 남자, 105, 32


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 17, 6, '2015-01-06', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 17, 6, '2015-02-16', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 17, 6, '2015-02-16', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 17, 6, '2015-03-05', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 17, 6, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 17, 6, '2015-02-23', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 17, 6, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 17, 6, '2015-02-05', 1, 1 ,32);


------------------------------------------------------------- memnum 7일 때 시작 : 남자, 95, 28 아기옷 : 7


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 17, 7, '2015-01-07', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 17, 7, '2015-02-02', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 17, 7, '2015-02-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 17, 7, '2015-02-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 17, 7, '2015-02-03', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 17, 7, '2015-02-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 17, 7, '2015-02-09', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 17, 7, '2015-04-13', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 17, 7, '2015-01-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 17, 7, '2015-03-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 17, 7, '2015-02-11', 1, 1 ,7);

------------------------------------------------------------- memnum 8일 때 시작 : 여, 85, 29



insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 17, 8, '2015-01-13', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 17, 8, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 17, 8, '2015-01-26', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 17, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 8, '2015-01-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 17, 8, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 17, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 17, 8, '2015-03-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 8, '2015-03-03', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 17, 8, '2015-02-19', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 17, 8, '2015-06-25', 1, 1 ,85);


------------------------------------------------------------- memnum 9 일 때 시작 : 남자, 100, 30


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 17, 9, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 17, 9, '2015-01-05', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 17, 9, '2015-01-27', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 17, 9, '2015-02-21', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 17, 9, '2015-02-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 17, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 17, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 17, 9, '2015-01-14', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 17, 9, '2015-01-14', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 17, 9, '2015-01-17', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 17, 9, '2015-01-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 17, 9, '2015-01-01', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 17, 9, '2015-01-29', 1, 1 ,100);


------------------------------------------------------------- memnum 10일 때 시작 : 여, 75, 25


insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 10, '2015-01-27', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 17, 10, '2015-02-05', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 17, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 17, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 17, 10, '2015-02-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 17, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 10, '2015-01-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 10, '2015-01-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 17, 10, '2015-02-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 10, '2015-02-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 10, '2015-02-16', 1, 1 ,75);


------------------------------------------------------------- memnum 11일 때 시작 : 여, 75, 25 아기옷 8

insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 11, '2015-01-13', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 17, 11, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 17, 11, '2015-03-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 17, 11, '2015-03-11', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 17, 11, '2015-03-29', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 17, 11, '2015-01-03', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 17, 11, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 17, 11, '2015-01-28', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 17, 11, '2015-01-28', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 17, 11, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 17, 11, '2015-02-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 17, 11, '2015-02-14', 1, 1 ,8);

------------------------------------------------------------- memnum 12 일 때 시작 : 남자, 100, 28
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 17, 12, '2015-01-11', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 17, 12, '2015-01-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 17, 12, '2015-01-22', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 17, 12, '2015-02-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 17, 12, '2015-02-19', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 17, 12, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 17, 12, '2015-01-07', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 17, 12, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 17, 12, '2015-01-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 17, 12, '2015-01-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 17, 12, '2015-01-02', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 17, 12, '2015-02-09', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 17, 12, '2015-02-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 17, 12, '2015-01-26', 1, 1 ,28);



------------------------------------------------------------- memnum 13일 때 시작 : 여, 80, 25 

insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 17, 13, '2015-01-07', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 17, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 17, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 13, '2015-01-08', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 17, 13, '2015-01-08', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 17, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 17, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 17, 13, '2015-02-06', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 17, 13, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 13, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 17, 13, '2015-06-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 13, '2015-01-26', 1, 1 ,80);

------------------------------------------------------------- memnum 14일 때 시작 : 여, 85, 29


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 17, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 17, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 14, '2015-02-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 17, 14, '2015-02-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 14, '2015-02-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 17, 14, '2015-02-28', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 17, 14, '2015-01-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 14, '2015-02-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 17, 14, '2015-02-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 17, 14, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 17, 14, '2015-01-29', 1, 1 ,29);

------------------------------------------------------------- memnum 15일 때 시작 : 여, 80, 25  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 17, 15, '2015-01-29', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 17, 15, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 17, 15, '2015-02-16', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 17, 15, '2015-01-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 17, 15, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 17, 15, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 17, 15, '2015-01-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 17, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 17, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 17, 15, '2015-02-05', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 15, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 17, 15, '2015-01-27', 1, 1 ,6);


------------------------------------------------------------- memnum 16일 때 시작 : 남 , 100, 30  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 17, 16, '2015-01-13', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 17, 16, '2015-01-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 17, 16, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 17, 16, '2015-02-16', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 17, 16, '2015-02-26', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 17, 16, '2015-02-24', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 17, 16, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 17, 16, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 17, 16, '2015-01-08', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 17, 16, '2015-02-17', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 17, 16, '2015-01-17', 1, 1 ,6);

------------------------------------------------------------- memnum 17일 때 시작 : 여, 85, 27  아기옷 : 7



insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 17, 17, '2015-01-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 17, 17, '2015-02-10', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 17, 17, '2015-03-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 17, 17, '2015-03-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 17, 17, '2015-02-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 17, 17, '2015-02-22', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 17, 17, '2015-02-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 17, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 17, 17, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 17, 17, '2015-01-19', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 17, '2015-01-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 17, 17, '2015-02-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 17, 17, '2015-01-20', 1, 1 ,7);


------------------------------------------------------------- memnum 18일 때 시작 : 여, 80, 27


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 17, 18, '2015-01-22', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 17, 18, '2015-02-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 17, 18, '2015-01-17', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 17, 18, '2015-01-24', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 17, 18, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 17, 18, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 17, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 17, 18, '2015-02-23', 1, 1 ,27);


------------------------------------------------------------- memnum 19일 때 시작 : 남 105 , 32 아기옷 7

insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 17, 19, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 17, 19, '2015-01-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 17, 19, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 17, 19, '2015-02-14', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 17, 19, '2015-02-17', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 17, 19, '2015-03-26', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 17, 19, '2015-01-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 17, 19, '2015-02-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 17, 19, '2015-02-21', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 17, 19, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 17, 19, '2015-01-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 17, 19, '2015-01-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 17, 19, '2015-02-11', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 17, 19, '2015-01-11', 1, 1 ,7);


------------------------------------------------------------- memnum 40일 때 시작 : 남 95, 28


insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 17, 20, '2015-01-08', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 17, 20, '2015-01-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 17, 20, '2015-01-19', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 17, 20, '2015-02-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 17, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 17, 20, '2015-03-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 17, 20, '2015-02-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 17, 20, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 17, 20, '2015-02-21', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 17, 20, '2015-01-29', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 17, 20, '2015-01-22', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 17, 20, '2015-01-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 17, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 17, 20, '2015-01-19', 1, 1 ,8);





--------------------------------------------
--------------------------------------------





------------------------------------------------------------
---sell 18 : 죽전점

insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 18, 1, '2015-01-01', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 18, 1, '2015-01-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 18, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 37000, 0, 18, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 18, 1, '2015-01-13', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 18, 1, '2015-01-05', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 18, 1, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 18, 1, '2015-01-14', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 18, 1, '2015-01-26', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 18, 1, '2015-01-16', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 18, 1, '2015-01-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 18, 1, '2015-01-19', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 18, 1, '2015-01-19', 1, 1 ,75);
------------------------------------------------------------- memnum 22일 때 시작 : 아기옷, 사이즈 6 

insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 18, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 18, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 18, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 18, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 18, 2, '2015-02-12', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 18, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 18, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 18, 2, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 18, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 18, 2, '2015-02-11', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 18, 2, '2015-02-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 18, 2, '2015-02-27', 1, 1 ,6);

------------------------------------------------------------- memnum 23일 때 시작 : 남자옷, 사이즈 105 , 30

insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 18, 3, '2015-01-03', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 18, 3, '2015-01-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 18, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 18, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 18, 3, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 18, 3, '2015-03-18', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 18, 3, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 18, 3, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 18, 3, '2015-02-05', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 18, 3, '2015-02-16', 1, 1 ,105);


------------------------------------------------------------- memnum 4일 때 시작 : 남자옷, 사이즈 95 , 28
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 18, 4, '2015-01-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 18, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 18, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 18, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 18, 4, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 18, 4, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 18, 4, '2015-02-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 18, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 18, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 18, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 18, 4, '2015-01-24', 1, 1 ,95);


------------------------------------------------------------- memnum 5일 때 시작 : 여자옷, 사이즈 80 , 27  ,아기옷 :사이즈 8 
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 18, 5, '2015-01-05', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 18, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 18, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 18, 5, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 18, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 18, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 18, 5, '2015-01-09', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 18, 5, '2015-01-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 18, 5, '2015-01-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 18, 5, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 18, 5, '2015-02-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 18, 5, '2015-01-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 18, 5, '2015-02-26', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 18, 5, '2015-01-26', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 18, 5, '2015-02-26', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 18, 5, '2015-01-19', 1, 1 ,80);
------------------------------------------------------------- memnum 6일 때 시작 : 남자, 105, 32


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 18, 6, '2015-01-06', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 18, 6, '2015-02-16', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 18, 6, '2015-02-16', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 18, 6, '2015-03-05', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 18, 6, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 18, 6, '2015-02-23', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 18, 6, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 18, 6, '2015-02-05', 1, 1 ,32);


------------------------------------------------------------- memnum 7일 때 시작 : 남자, 95, 28 아기옷 : 7


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 18, 7, '2015-01-07', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 18, 7, '2015-02-02', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 18, 7, '2015-02-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 18, 7, '2015-02-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 18, 7, '2015-02-03', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 18, 7, '2015-02-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 18, 7, '2015-02-09', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 18, 7, '2015-04-13', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 18, 7, '2015-01-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 18, 7, '2015-03-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 18, 7, '2015-02-11', 1, 1 ,7);

------------------------------------------------------------- memnum 8일 때 시작 : 여, 85, 29



insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 18, 8, '2015-01-13', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 18, 8, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 18, 8, '2015-01-26', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 18, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 8, '2015-01-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 18, 8, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 18, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 18, 8, '2015-03-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 8, '2015-03-03', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 18, 8, '2015-02-19', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 18, 8, '2015-06-25', 1, 1 ,85);


------------------------------------------------------------- memnum 9 일 때 시작 : 남자, 100, 30


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 18, 9, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 18, 9, '2015-01-05', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 18, 9, '2015-01-27', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 18, 9, '2015-02-21', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 18, 9, '2015-02-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 18, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 18, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 18, 9, '2015-01-14', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 18, 9, '2015-01-14', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 18, 9, '2015-01-17', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 18, 9, '2015-01-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 18, 9, '2015-01-01', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 18, 9, '2015-01-29', 1, 1 ,100);


------------------------------------------------------------- memnum 10일 때 시작 : 여, 75, 25


insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 10, '2015-01-27', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 18, 10, '2015-02-05', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 18, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 18, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 18, 10, '2015-02-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 18, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 10, '2015-01-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 10, '2015-01-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 18, 10, '2015-02-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 10, '2015-02-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 10, '2015-02-16', 1, 1 ,75);


------------------------------------------------------------- memnum 11일 때 시작 : 여, 75, 25 아기옷 8

insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 11, '2015-01-13', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 18, 11, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 18, 11, '2015-03-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 18, 11, '2015-03-11', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 18, 11, '2015-03-29', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 18, 11, '2015-01-03', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 18, 11, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 18, 11, '2015-01-28', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 18, 11, '2015-01-28', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 18, 11, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 18, 11, '2015-02-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 18, 11, '2015-02-14', 1, 1 ,8);

------------------------------------------------------------- memnum 12 일 때 시작 : 남자, 100, 28
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 18, 12, '2015-01-11', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 18, 12, '2015-01-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 18, 12, '2015-01-22', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 18, 12, '2015-02-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 18, 12, '2015-02-19', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 18, 12, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 18, 12, '2015-01-07', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 18, 12, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 18, 12, '2015-01-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 18, 12, '2015-01-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 18, 12, '2015-01-02', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 18, 12, '2015-02-09', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 18, 12, '2015-02-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 18, 12, '2015-01-26', 1, 1 ,28);



------------------------------------------------------------- memnum 13일 때 시작 : 여, 80, 25 

insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 18, 13, '2015-01-07', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 18, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 18, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 13, '2015-01-08', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 18, 13, '2015-01-08', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 18, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 18, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 18, 13, '2015-02-06', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 18, 13, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 13, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 18, 13, '2015-06-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 13, '2015-01-26', 1, 1 ,80);

------------------------------------------------------------- memnum 14일 때 시작 : 여, 85, 29


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 18, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 18, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 14, '2015-02-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 18, 14, '2015-02-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 14, '2015-02-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 18, 14, '2015-02-28', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 18, 14, '2015-01-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 14, '2015-02-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 18, 14, '2015-02-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 18, 14, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 18, 14, '2015-01-29', 1, 1 ,29);

------------------------------------------------------------- memnum 15일 때 시작 : 여, 80, 25  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 18, 15, '2015-01-29', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 18, 15, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 18, 15, '2015-02-16', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 18, 15, '2015-01-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 18, 15, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 18, 15, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 18, 15, '2015-01-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 18, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 18, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 18, 15, '2015-02-05', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 15, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 18, 15, '2015-01-27', 1, 1 ,6);


------------------------------------------------------------- memnum 16일 때 시작 : 남 , 100, 30  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 18, 16, '2015-01-13', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 18, 16, '2015-01-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 18, 16, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 18, 16, '2015-02-16', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 18, 16, '2015-02-26', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 18, 16, '2015-02-24', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 18, 16, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 18, 16, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 18, 16, '2015-01-08', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 18, 16, '2015-02-17', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 18, 16, '2015-01-17', 1, 1 ,6);

------------------------------------------------------------- memnum 17일 때 시작 : 여, 85, 27  아기옷 : 7



insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 18, 17, '2015-01-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 18, 17, '2015-02-10', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 18, 17, '2015-03-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 18, 17, '2015-03-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 18, 17, '2015-02-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 18, 17, '2015-02-22', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 18, 17, '2015-02-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 17, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 18, 17, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 18, 17, '2015-01-19', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 17, '2015-01-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 18, 17, '2015-02-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 18, 17, '2015-01-20', 1, 1 ,7);


------------------------------------------------------------- memnum 18일 때 시작 : 여, 80, 27


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 18, 18, '2015-01-22', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 18, 18, '2015-02-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 18, 18, '2015-01-17', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 18, 18, '2015-01-24', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 18, 18, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 18, 18, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 18, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 18, 18, '2015-02-23', 1, 1 ,27);


------------------------------------------------------------- memnum 19일 때 시작 : 남 105 , 32 아기옷 7

insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 18, 19, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 18, 19, '2015-01-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 18, 19, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 18, 19, '2015-02-14', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 18, 19, '2015-02-17', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 18, 19, '2015-03-26', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 18, 19, '2015-01-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 18, 19, '2015-02-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 18, 19, '2015-02-21', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 18, 19, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 18, 19, '2015-01-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 18, 19, '2015-01-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 18, 19, '2015-02-11', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 18, 19, '2015-01-11', 1, 1 ,7);


------------------------------------------------------------- memnum 40일 때 시작 : 남 95, 28


insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 18, 20, '2015-01-08', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 18, 20, '2015-01-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 18, 20, '2015-01-19', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 18, 20, '2015-02-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 18, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 18, 20, '2015-03-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 18, 20, '2015-02-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 18, 20, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 18, 20, '2015-02-21', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 18, 20, '2015-01-29', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 18, 20, '2015-01-22', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 18, 20, '2015-01-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 18, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 18, 20, '2015-01-19', 1, 1 ,8);



---------------------------------
---------------------------------




------------------------------------------------------------
---sell 19 : 오리점

insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 19, 1, '2015-01-01', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 19, 1, '2015-01-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 19, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 37000, 0, 19, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 19, 1, '2015-01-13', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 19, 1, '2015-01-05', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 19, 1, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 19, 1, '2015-01-14', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 19, 1, '2015-01-26', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 19, 1, '2015-01-16', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 19, 1, '2015-01-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 19, 1, '2015-01-19', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 19, 1, '2015-01-19', 1, 1 ,75);
------------------------------------------------------------- memnum 22일 때 시작 : 아기옷, 사이즈 6 

insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 19, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 19, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 19, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 19, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 19, 2, '2015-02-12', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 19, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 19, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 19, 2, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 19, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 19, 2, '2015-02-11', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 19, 2, '2015-02-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 19, 2, '2015-02-27', 1, 1 ,6);

------------------------------------------------------------- memnum 23일 때 시작 : 남자옷, 사이즈 105 , 30

insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 19, 3, '2015-01-03', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 19, 3, '2015-01-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 19, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 19, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 19, 3, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 19, 3, '2015-03-18', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 19, 3, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 19, 3, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 19, 3, '2015-02-05', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 19, 3, '2015-02-16', 1, 1 ,105);


------------------------------------------------------------- memnum 4일 때 시작 : 남자옷, 사이즈 95 , 28
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 19, 4, '2015-01-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 19, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 19, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 19, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 19, 4, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 19, 4, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 19, 4, '2015-02-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 19, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 19, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 19, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 19, 4, '2015-01-24', 1, 1 ,95);


------------------------------------------------------------- memnum 5일 때 시작 : 여자옷, 사이즈 80 , 27  ,아기옷 :사이즈 8 
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 19, 5, '2015-01-05', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 19, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 19, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 19, 5, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 19, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 19, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 19, 5, '2015-01-09', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 19, 5, '2015-01-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 19, 5, '2015-01-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 19, 5, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 19, 5, '2015-02-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 19, 5, '2015-01-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 19, 5, '2015-02-26', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 19, 5, '2015-01-26', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 19, 5, '2015-02-26', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 19, 5, '2015-01-19', 1, 1 ,80);
------------------------------------------------------------- memnum 6일 때 시작 : 남자, 105, 32


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 19, 6, '2015-01-06', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 19, 6, '2015-02-16', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 19, 6, '2015-02-16', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 19, 6, '2015-03-05', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 19, 6, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 19, 6, '2015-02-23', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 19, 6, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 19, 6, '2015-02-05', 1, 1 ,32);


------------------------------------------------------------- memnum 7일 때 시작 : 남자, 95, 28 아기옷 : 7


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 19, 7, '2015-01-07', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 19, 7, '2015-02-02', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 19, 7, '2015-02-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 19, 7, '2015-02-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 19, 7, '2015-02-03', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 19, 7, '2015-02-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 19, 7, '2015-02-09', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 19, 7, '2015-04-13', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 19, 7, '2015-01-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 19, 7, '2015-03-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 19, 7, '2015-02-11', 1, 1 ,7);

------------------------------------------------------------- memnum 8일 때 시작 : 여, 85, 29



insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 19, 8, '2015-01-13', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 19, 8, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 19, 8, '2015-01-26', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 19, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 8, '2015-01-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 19, 8, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 19, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 19, 8, '2015-03-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 8, '2015-03-03', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 19, 8, '2015-02-19', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 19, 8, '2015-06-25', 1, 1 ,85);


------------------------------------------------------------- memnum 9 일 때 시작 : 남자, 100, 30


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 19, 9, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 19, 9, '2015-01-05', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 19, 9, '2015-01-27', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 19, 9, '2015-02-21', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 19, 9, '2015-02-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 19, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 19, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 19, 9, '2015-01-14', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 19, 9, '2015-01-14', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 19, 9, '2015-01-17', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 19, 9, '2015-01-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 19, 9, '2015-01-01', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 19, 9, '2015-01-29', 1, 1 ,100);


------------------------------------------------------------- memnum 10일 때 시작 : 여, 75, 25


insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 10, '2015-01-27', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 19, 10, '2015-02-05', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 19, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 19, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 19, 10, '2015-02-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 19, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 10, '2015-01-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 10, '2015-01-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 19, 10, '2015-02-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 10, '2015-02-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 10, '2015-02-16', 1, 1 ,75);


------------------------------------------------------------- memnum 11일 때 시작 : 여, 75, 25 아기옷 8

insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 11, '2015-01-13', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 19, 11, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 19, 11, '2015-03-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 19, 11, '2015-03-11', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 19, 11, '2015-03-29', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 19, 11, '2015-01-03', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 19, 11, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 19, 11, '2015-01-28', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 19, 11, '2015-01-28', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 19, 11, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 19, 11, '2015-02-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 19, 11, '2015-02-14', 1, 1 ,8);

------------------------------------------------------------- memnum 12 일 때 시작 : 남자, 100, 28
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 19, 12, '2015-01-11', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 19, 12, '2015-01-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 19, 12, '2015-01-22', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 19, 12, '2015-02-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 19, 12, '2015-02-19', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 19, 12, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 19, 12, '2015-01-07', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 19, 12, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 19, 12, '2015-01-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 19, 12, '2015-01-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 19, 12, '2015-01-02', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 19, 12, '2015-02-09', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 19, 12, '2015-02-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 19, 12, '2015-01-26', 1, 1 ,28);



------------------------------------------------------------- memnum 13일 때 시작 : 여, 80, 25 

insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 19, 13, '2015-01-07', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 19, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 19, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 13, '2015-01-08', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 19, 13, '2015-01-08', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 19, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 19, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 19, 13, '2015-02-06', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 19, 13, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 13, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 19, 13, '2015-06-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 13, '2015-01-26', 1, 1 ,80);

------------------------------------------------------------- memnum 14일 때 시작 : 여, 85, 29


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 19, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 19, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 14, '2015-02-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 19, 14, '2015-02-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 14, '2015-02-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 19, 14, '2015-02-28', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 19, 14, '2015-01-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 14, '2015-02-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 19, 14, '2015-02-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 19, 14, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 19, 14, '2015-01-29', 1, 1 ,29);

------------------------------------------------------------- memnum 15일 때 시작 : 여, 80, 25  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 19, 15, '2015-01-29', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 19, 15, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 19, 15, '2015-02-16', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 19, 15, '2015-01-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 19, 15, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 19, 15, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 19, 15, '2015-01-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 19, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 19, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 19, 15, '2015-02-05', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 15, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 19, 15, '2015-01-27', 1, 1 ,6);


------------------------------------------------------------- memnum 16일 때 시작 : 남 , 100, 30  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 19, 16, '2015-01-13', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 19, 16, '2015-01-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 19, 16, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 19, 16, '2015-02-16', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 19, 16, '2015-02-26', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 19, 16, '2015-02-24', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 19, 16, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 19, 16, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 19, 16, '2015-01-08', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 19, 16, '2015-02-17', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 19, 16, '2015-01-17', 1, 1 ,6);

------------------------------------------------------------- memnum 17일 때 시작 : 여, 85, 27  아기옷 : 7



insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 19, 17, '2015-01-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 19, 17, '2015-02-10', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 19, 17, '2015-03-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 19, 17, '2015-03-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 19, 17, '2015-02-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 19, 17, '2015-02-22', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 19, 17, '2015-02-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 17, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 19, 17, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 19, 17, '2015-01-19', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 17, '2015-01-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 19, 17, '2015-02-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 19, 17, '2015-01-20', 1, 1 ,7);


------------------------------------------------------------- memnum 18일 때 시작 : 여, 80, 27


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 19, 18, '2015-01-22', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 19, 18, '2015-02-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 19, 18, '2015-01-17', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 19, 18, '2015-01-24', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 19, 18, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 19, 18, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 19, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 19, 18, '2015-02-23', 1, 1 ,27);


------------------------------------------------------------- memnum 19일 때 시작 : 남 105 , 32 아기옷 7

insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 19, 19, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 19, 19, '2015-01-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 19, 19, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 19, 19, '2015-02-14', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 19, 19, '2015-02-17', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 19, 19, '2015-03-26', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 19, 19, '2015-01-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 19, 19, '2015-02-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 19, 19, '2015-02-21', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 19, 19, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 19, 19, '2015-01-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 19, 19, '2015-01-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 19, 19, '2015-02-11', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 19, 19, '2015-01-11', 1, 1 ,7);


------------------------------------------------------------- memnum 40일 때 시작 : 남 95, 28


insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 19, 20, '2015-01-08', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 19, 20, '2015-01-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 19, 20, '2015-01-19', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 19, 20, '2015-02-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 19, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 19, 20, '2015-03-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 19, 20, '2015-02-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 19, 20, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 19, 20, '2015-02-21', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 19, 20, '2015-01-29', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 19, 20, '2015-01-22', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 19, 20, '2015-01-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 19, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 19, 20, '2015-01-19', 1, 1 ,8);





--------------------------------------
--------------------------------------







------------------------------------------------------------
---sell 20 : 잠실점

insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 20, 1, '2015-01-01', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 20, 1, '2015-01-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 20, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 37000, 0, 20, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 20, 1, '2015-01-13', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 20, 1, '2015-01-05', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 20, 1, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 20, 1, '2015-01-14', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 20, 1, '2015-01-26', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 20, 1, '2015-01-16', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 20, 1, '2015-01-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 20, 1, '2015-01-19', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 20, 1, '2015-01-19', 1, 1 ,75);
------------------------------------------------------------- memnum 22일 때 시작 : 아기옷, 사이즈 6 

insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 20, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 20, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 20, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 20, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 20, 2, '2015-02-12', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 20, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 20, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 20, 2, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 20, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 20, 2, '2015-02-11', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 20, 2, '2015-02-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 20, 2, '2015-02-27', 1, 1 ,6);

------------------------------------------------------------- memnum 23일 때 시작 : 남자옷, 사이즈 105 , 30

insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 20, 3, '2015-01-03', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 20, 3, '2015-01-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 20, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 20, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 20, 3, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 20, 3, '2015-03-18', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 20, 3, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 20, 3, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 20, 3, '2015-02-05', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 20, 3, '2015-02-16', 1, 1 ,105);


------------------------------------------------------------- memnum 4일 때 시작 : 남자옷, 사이즈 95 , 28
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 20, 4, '2015-01-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 20, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 20, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 20, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 20, 4, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 20, 4, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 20, 4, '2015-02-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 20, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 20, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 20, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 20, 4, '2015-01-24', 1, 1 ,95);


------------------------------------------------------------- memnum 5일 때 시작 : 여자옷, 사이즈 80 , 27  ,아기옷 :사이즈 8 
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 20, 5, '2015-01-05', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 20, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 20, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 20, 5, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 20, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 20, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 20, 5, '2015-01-09', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 20, 5, '2015-01-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 20, 5, '2015-01-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 20, 5, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 20, 5, '2015-02-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 20, 5, '2015-01-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 20, 5, '2015-02-26', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 20, 5, '2015-01-26', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 20, 5, '2015-02-26', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 20, 5, '2015-01-19', 1, 1 ,80);
------------------------------------------------------------- memnum 6일 때 시작 : 남자, 105, 32


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 20, 6, '2015-01-06', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 20, 6, '2015-02-16', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 20, 6, '2015-02-16', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 20, 6, '2015-03-05', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 20, 6, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 20, 6, '2015-02-23', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 20, 6, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0,20 , 6, '2015-02-05', 1, 1 ,32);


------------------------------------------------------------- memnum 7일 때 시작 : 남자, 95, 28 아기옷 : 7


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 20, 7, '2015-01-07', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 20, 7, '2015-02-02', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 20, 7, '2015-02-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 20, 7, '2015-02-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 20, 7, '2015-02-03', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 20, 7, '2015-02-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 20, 7, '2015-02-09', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 20, 7, '2015-04-13', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 20, 7, '2015-01-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 20, 7, '2015-03-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 20, 7, '2015-02-11', 1, 1 ,7);

------------------------------------------------------------- memnum 8일 때 시작 : 여, 85, 29



insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 20, 8, '2015-01-13', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 20, 8, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 20, 8, '2015-01-26', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 20, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 8, '2015-01-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 20, 8, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 20, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 20, 8, '2015-03-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 8, '2015-03-03', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 20, 8, '2015-02-19', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 20, 8, '2015-06-25', 1, 1 ,85);


------------------------------------------------------------- memnum 9 일 때 시작 : 남자, 100, 30


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 20, 9, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 20, 9, '2015-01-05', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 20, 9, '2015-01-27', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 20, 9, '2015-02-21', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 20, 9, '2015-02-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 20, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 20, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 20, 9, '2015-01-14', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 20, 9, '2015-01-14', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 20, 9, '2015-01-17', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 20, 9, '2015-01-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 20, 9, '2015-01-01', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 20, 9, '2015-01-29', 1, 1 ,100);


------------------------------------------------------------- memnum 10일 때 시작 : 여, 75, 25


insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 10, '2015-01-27', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 20, 10, '2015-02-05', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 20, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 20, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 20, 10, '2015-02-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 20, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 10, '2015-01-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 10, '2015-01-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 20, 10, '2015-02-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 10, '2015-02-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 10, '2015-02-16', 1, 1 ,75);


------------------------------------------------------------- memnum 11일 때 시작 : 여, 75, 25 아기옷 8

insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 11, '2015-01-13', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 20, 11, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 20, 11, '2015-03-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 20, 11, '2015-03-11', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 20, 11, '2015-03-29', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 20, 11, '2015-01-03', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 20, 11, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 20, 11, '2015-01-28', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 20, 11, '2015-01-28', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 20, 11, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 20, 11, '2015-02-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 20, 11, '2015-02-14', 1, 1 ,8);

------------------------------------------------------------- memnum 12 일 때 시작 : 남자, 100, 28
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 20, 12, '2015-01-11', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 20, 12, '2015-01-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 20, 12, '2015-01-22', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 20, 12, '2015-02-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 20, 12, '2015-02-19', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 20, 12, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 20, 12, '2015-01-07', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 20, 12, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 20, 12, '2015-01-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 20, 12, '2015-01-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 20, 12, '2015-01-02', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 20, 12, '2015-02-09', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 20, 12, '2015-02-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 20, 12, '2015-01-26', 1, 1 ,28);



------------------------------------------------------------- memnum 13일 때 시작 : 여, 80, 25 

insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 20, 13, '2015-01-07', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 20, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 20, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 13, '2015-01-08', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 20, 13, '2015-01-08', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 20, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 20, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 20, 13, '2015-02-06', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 20, 13, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 13, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 20, 13, '2015-06-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 13, '2015-01-26', 1, 1 ,80);

------------------------------------------------------------- memnum 14일 때 시작 : 여, 85, 29


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 20, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 20, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 14, '2015-02-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 20, 14, '2015-02-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 14, '2015-02-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 20, 14, '2015-02-28', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 20, 14, '2015-01-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 14, '2015-02-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 20, 14, '2015-02-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 20, 14, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 20, 14, '2015-01-29', 1, 1 ,29);

------------------------------------------------------------- memnum 15일 때 시작 : 여, 80, 25  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 20, 15, '2015-01-29', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 20, 15, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 20, 15, '2015-02-16', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 20, 15, '2015-01-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 20, 15, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 20, 15, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 20, 15, '2015-01-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 20, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 20, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 20, 15, '2015-02-05', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 15, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 20, 15, '2015-01-27', 1, 1 ,6);


------------------------------------------------------------- memnum 16일 때 시작 : 남 , 100, 30  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 20, 16, '2015-01-13', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 20, 16, '2015-01-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 20, 16, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 20, 16, '2015-02-16', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 20, 16, '2015-02-26', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 20, 16, '2015-02-24', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 20, 16, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 20, 16, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 20, 16, '2015-01-08', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 20, 16, '2015-02-17', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 20, 16, '2015-01-17', 1, 1 ,6);

------------------------------------------------------------- memnum 17일 때 시작 : 여, 85, 27  아기옷 : 7



insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 20, 17, '2015-01-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 20, 17, '2015-02-10', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 20, 17, '2015-03-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 20, 17, '2015-03-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 20, 17, '2015-02-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 20, 17, '2015-02-22', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 20, 17, '2015-02-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 17, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 20, 17, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 20, 17, '2015-01-19', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 17, '2015-01-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 20, 17, '2015-02-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 20, 17, '2015-01-20', 1, 1 ,7);


------------------------------------------------------------- memnum 18일 때 시작 : 여, 80, 27


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 20, 18, '2015-01-22', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 20, 18, '2015-02-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 20, 18, '2015-01-17', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 20, 18, '2015-01-24', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 20, 18, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 20, 18, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 20, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 20, 18, '2015-02-23', 1, 1 ,27);


------------------------------------------------------------- memnum 19일 때 시작 : 남 105 , 32 아기옷 7

insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 20, 19, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 20, 19, '2015-01-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 20, 19, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 20, 19, '2015-02-14', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 20, 19, '2015-02-17', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 20, 19, '2015-03-26', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 20, 19, '2015-01-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 20, 19, '2015-02-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 20, 19, '2015-02-21', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 20, 19, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 20, 19, '2015-01-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 20, 19, '2015-01-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 20, 19, '2015-02-11', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 20, 19, '2015-01-11', 1, 1 ,7);


------------------------------------------------------------- memnum 40일 때 시작 : 남 95, 28


insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 20, 20, '2015-01-08', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 20, 20, '2015-01-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 20, 20, '2015-01-19', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 20, 20, '2015-02-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 20, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 20, 20, '2015-03-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 20, 20, '2015-02-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 20, 20, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 20, 20, '2015-02-21', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 20, 20, '2015-01-29', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 20, 20, '2015-01-22', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 20, 20, '2015-01-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 20, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 20, 20, '2015-01-19', 1, 1 ,8);



---------------------------------------------
--------------------------------------------






------------------------------------------------------------
---sell 21 : 건대점

insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 21, 1, '2015-01-01', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 21, 1, '2015-01-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 21, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 37000, 0, 21, 1, '2015-02-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 21, 1, '2015-01-13', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 21, 1, '2015-01-05', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 21, 1, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 21, 1, '2015-01-14', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 21, 1, '2015-01-26', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 21, 1, '2015-01-16', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 21, 1, '2015-01-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 21, 1, '2015-01-19', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 21, 1, '2015-01-19', 1, 1 ,75);
------------------------------------------------------------- memnum 22일 때 시작 : 아기옷, 사이즈 6 

insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 21, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 21, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 21, 2, '2015-02-02', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 21, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 21, 2, '2015-02-12', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 21, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 21, 2, '2015-02-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 21, 2, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 21, 2, '2015-02-22', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 21, 2, '2015-02-11', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 21, 2, '2015-02-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 21, 2, '2015-02-27', 1, 1 ,6);

------------------------------------------------------------- memnum 23일 때 시작 : 남자옷, 사이즈 105 , 30

insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 21, 3, '2015-01-03', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 21, 3, '2015-01-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 21, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 21, 3, '2015-02-09', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 21, 3, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 21, 3, '2015-03-18', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 21, 3, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 21, 3, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001', 50000, 0, 21, 3, '2015-02-05', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 21, 3, '2015-02-16', 1, 1 ,105);


------------------------------------------------------------- memnum 4일 때 시작 : 남자옷, 사이즈 95 , 28
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 21, 4, '2015-01-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 21, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 21, 4, '2015-02-04', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 21, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 21, 4, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002', 50000, 0, 21, 4, '2015-04-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 21, 4, '2015-02-14', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 21, 4, '2015-02-21', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 21, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1522115004', 55000, 0, 21, 4, '2015-02-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003', 75000, 0, 21, 4, '2015-01-24', 1, 1 ,95);


------------------------------------------------------------- memnum 5일 때 시작 : 여자옷, 사이즈 80 , 27  ,아기옷 :사이즈 8 
insert into sell values(sell_seq.nextval, '1532110004', 45000, 0, 21, 5, '2015-01-05', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1513104002', 22000, 0, 21, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 21, 5, '2015-01-05', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1522219002', 30000, 0, 21, 5, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 21, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 21, 5, '2015-02-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 21, 5, '2015-01-09', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 21, 5, '2015-01-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 21, 5, '2015-01-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1543211004', 9000, 0, 21, 5, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523101003', 17000, 0, 21, 5, '2015-02-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005', 12000, 0, 21, 5, '2015-01-04', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1523103001', 15000, 0, 21, 5, '2015-02-26', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1512119001', 25000, 0, 21, 5, '2015-01-26', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005', 37000, 0, 21, 5, '2015-02-26', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532115003', 65000, 0, 21, 5, '2015-01-19', 1, 1 ,80);
------------------------------------------------------------- memnum 6일 때 시작 : 남자, 105, 32


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 21, 6, '2015-01-06', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 21, 6, '2015-02-16', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 21, 6, '2015-02-16', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 21, 6, '2015-03-05', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 21, 6, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 21, 6, '2015-02-23', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 21, 6, '2015-02-13', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 21, 6, '2015-02-05', 1, 1 ,32);


------------------------------------------------------------- memnum 7일 때 시작 : 남자, 95, 28 아기옷 : 7


insert into sell values(sell_seq.nextval, '1531115001', 25000, 0, 21, 7, '2015-01-07', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 21, 7, '2015-02-02', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 21, 7, '2015-02-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 21, 7, '2015-02-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 21, 7, '2015-02-03', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 21, 7, '2015-02-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 21, 7, '2015-02-09', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 21, 7, '2015-04-13', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 21, 7, '2015-01-28', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 21, 7, '2015-03-11', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 21, 7, '2015-02-11', 1, 1 ,7);

------------------------------------------------------------- memnum 8일 때 시작 : 여, 85, 29



insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 21, 8, '2015-01-13', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 21, 8, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 21, 8, '2015-01-26', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 21, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 8, '2015-01-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 21, 8, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 21, 8, '2015-02-14', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 21, 8, '2015-03-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 8, '2015-03-03', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 21, 8, '2015-02-19', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 21, 8, '2015-06-25', 1, 1 ,85);


------------------------------------------------------------- memnum 9 일 때 시작 : 남자, 100, 30


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 21, 9, '2015-01-05', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 21, 9, '2015-01-05', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 21, 9, '2015-01-27', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 21, 9, '2015-02-21', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 21, 9, '2015-02-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 21, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 21, 9, '2015-03-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 21, 9, '2015-01-14', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 21, 9, '2015-01-14', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 21, 9, '2015-01-17', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 21, 9, '2015-01-01', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 21, 9, '2015-01-01', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 21, 9, '2015-01-29', 1, 1 ,100);


------------------------------------------------------------- memnum 10일 때 시작 : 여, 75, 25


insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 10, '2015-01-27', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 21, 10, '2015-02-05', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 21, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 21, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 21, 10, '2015-02-11', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 21, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 10, '2015-02-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 10, '2015-01-24', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 10, '2015-01-21', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 21, 10, '2015-02-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 10, '2015-02-16', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 10, '2015-02-16', 1, 1 ,75);


------------------------------------------------------------- memnum 11일 때 시작 : 여, 75, 25 아기옷 8

insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 11, '2015-01-13', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 21, 11, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 21, 11, '2015-03-11', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 21, 11, '2015-03-11', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 21, 11, '2015-03-29', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 21, 11, '2015-01-03', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 21, 11, '2015-01-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 21, 11, '2015-01-28', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 21, 11, '2015-01-28', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 21, 11, '2015-01-14', 1, 1 ,75);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 21, 11, '2015-02-14', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 21, 11, '2015-02-14', 1, 1 ,8);

------------------------------------------------------------- memnum 12 일 때 시작 : 남자, 100, 28
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 21, 12, '2015-01-11', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 21, 12, '2015-01-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 21, 12, '2015-01-22', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 21, 12, '2015-02-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 21, 12, '2015-02-19', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 21, 12, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 21, 12, '2015-01-07', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 21, 12, '2015-01-11', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 21, 12, '2015-01-21', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 21, 12, '2015-01-04', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 21, 12, '2015-01-02', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 21, 12, '2015-02-09', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 21, 12, '2015-02-22', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 21, 12, '2015-01-26', 1, 1 ,28);



------------------------------------------------------------- memnum 13일 때 시작 : 여, 80, 25 

insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 21, 13, '2015-01-07', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 21, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 21, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 13, '2015-01-08', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 21, 13, '2015-01-08', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 21, 13, '2015-01-18', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 13, '2015-02-21', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 21, 13, '2015-02-27', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 21, 13, '2015-02-06', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 21, 13, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 13, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 21, 13, '2015-06-07', 1, 1 ,25);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 13, '2015-01-26', 1, 1 ,80);

------------------------------------------------------------- memnum 14일 때 시작 : 여, 85, 29


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 21, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 21, 14, '2015-01-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 14, '2015-02-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 21, 14, '2015-02-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 14, '2015-02-11', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 21, 14, '2015-02-28', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 21, 14, '2015-01-23', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 14, '2015-02-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 21, 14, '2015-02-14', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 21, 14, '2015-01-21', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 21, 14, '2015-01-29', 1, 1 ,29);

------------------------------------------------------------- memnum 15일 때 시작 : 여, 80, 25  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 21, 15, '2015-01-29', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 21, 15, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 21, 15, '2015-02-16', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 21, 15, '2015-01-27', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 21, 15, '2015-01-27', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 15, '2015-01-29', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 21, 15, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 21, 15, '2015-01-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 21, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 21, 15, '2015-02-05', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 21, 15, '2015-02-05', 1, 1 ,29);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 15, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 21, 15, '2015-01-27', 1, 1 ,6);


------------------------------------------------------------- memnum 16일 때 시작 : 남 , 100, 30  아기옷 : 6


insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 21, 16, '2015-01-13', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 21, 16, '2015-01-23', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 21, 16, '2015-02-13', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 21, 16, '2015-02-16', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 21, 16, '2015-02-26', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 21, 16, '2015-02-24', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 21, 16, '2015-02-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 21, 16, '2015-01-04', 1, 1 ,6);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 21, 16, '2015-01-08', 1, 1 ,100);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 21, 16, '2015-02-17', 1, 1 ,30);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 21, 16, '2015-01-17', 1, 1 ,6);

------------------------------------------------------------- memnum 17일 때 시작 : 여, 85, 27  아기옷 : 7



insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 21, 17, '2015-01-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 21, 17, '2015-02-10', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 21, 17, '2015-03-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 21, 17, '2015-03-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 21, 17, '2015-02-22', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 21, 17, '2015-02-22', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 21, 17, '2015-02-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 17, '2015-02-05', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 21, 17, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 21, 17, '2015-01-19', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 17, '2015-01-07', 1, 1 ,85);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 21, 17, '2015-02-20', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 21, 17, '2015-01-20', 1, 1 ,7);


------------------------------------------------------------- memnum 18일 때 시작 : 여, 80, 27


insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 21, 18, '2015-01-22', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 21, 18, '2015-02-14', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 21, 18, '2015-01-17', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1532115003',	65000, 0, 21, 18, '2015-01-24', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1522219002',	30000, 0, 21, 18, '2015-01-23', 1, 1 ,27);
insert into sell values(sell_seq.nextval, '1532110004',	45000, 0, 21, 18, '2015-01-23', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1512119001',	25000, 0, 21, 18, '2015-02-14', 1, 1 ,80);
insert into sell values(sell_seq.nextval, '1542210005',	37000, 0, 21, 18, '2015-02-23', 1, 1 ,27);


------------------------------------------------------------- memnum 19일 때 시작 : 남 105 , 32 아기옷 7

insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 21, 19, '2015-01-22', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1533104005',	12000, 0, 21, 19, '2015-01-22', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 21, 19, '2015-02-14', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 21, 19, '2015-02-14', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 21, 19, '2015-02-17', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 21, 19, '2015-03-26', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 21, 19, '2015-01-26', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 21, 19, '2015-02-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 21, 19, '2015-02-21', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1543211004',	9000, 0, 21, 19, '2015-02-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 21, 19, '2015-01-05', 1, 1 ,7);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 21, 19, '2015-01-08', 1, 1 ,105);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 21, 19, '2015-02-11', 1, 1 ,32);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 21, 19, '2015-01-11', 1, 1 ,7);


------------------------------------------------------------- memnum 40일 때 시작 : 남 95, 28


insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 21, 20, '2015-01-08', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 21, 20, '2015-01-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1513104002',	22000, 0, 21, 20, '2015-01-19', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 21, 20, '2015-02-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 21, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1531115001',	25000, 0, 21, 20, '2015-03-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 21, 20, '2015-02-01', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1523101003',	17000, 0, 21, 20, '2015-02-07', 1, 1 ,8);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 21, 20, '2015-02-21', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1522115004',	55000, 0, 21, 20, '2015-01-29', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1541115002',	50000, 0, 21, 20, '2015-01-22', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511111003',	75000, 0, 21, 20, '2015-01-11', 1, 1 ,95);
insert into sell values(sell_seq.nextval, '1511215005', 35000, 0, 21, 20, '2015-02-19', 1, 1 ,28);
insert into sell values(sell_seq.nextval, '1523103001',	15000, 0, 21, 20, '2015-01-19', 1, 1 ,8);


commit;






------------------------------------대화 인서트---------------------------
insert into croom values(croot_seq.nextVal,'bon_admin','여기는 본사입니다',sysdate,'0:0:0:0:0:0:0:1','A-4.JPG');


commit;