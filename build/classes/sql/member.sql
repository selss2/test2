select * from member;
create table member(
	id varchar2(20) primary key,
	pw varchar2(20),
	name varchar2(20),
	reg_date varchar2(20),
	ssn varchar2(10),
	email varchar2(30),
	profile_img varchar2(100)
	phone varchar2(15)
);
-- CREATE
insert into member(id,pw,name,reg,ssn,email,profile_img)
values('iu','1','아이유','2016-01-18','950515-2','iu@test.com','iu.jpg', '010-9532-7179');
insert into member(id,pw,name,reg,ssn,email,profile_img)
values('hong','1','홍길동','2015-07-05','890701-1','hong@test.com','hong.jpg', '010-9532-7179');
insert into member(id,pw,name,reg,ssn,email,profile_img)
values('you','1','유관순','2014-07-09','010701-4','you@test.com','you.jpg');
-- READ ()
select * from member; -- list
select * from member where id = 'hong';-- findByPK
select * from member where gender = '남';-- findByNotPK
select count(*) as count from member; -- count

-- UPDATE
update member set pw = 1 where id = 'hong';
update member set email = id||'@test.com';
update member set email = 'hong@test.com'; where id = 'hong';
update MEMBER set profile_img = id||'.jpg';
update MEMBER set phone = '010-9532-7179';
alter table member add email varchar2(30);
alter table member add profile_img varchar2(100);
alter table member add phone varchar2(15);

update member set reg = '2016-03-18' where id = 'parkbang';
update member set id = 'kang' where id = 'kingkang';
update member set email = 'samsung@test.com' where id = 'samsung';



-- DELETE
delete from member where id = 'lee';

