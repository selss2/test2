-------------[내부 스키마 : 물리적]-------------------
create table account(
accountNo number constraint account_pk primary key,
money number,
id varchar2(20)
);

select * from account;
select * from member;
drop table account;
---------------[외부 스키마 : 논리적]-----------------
create view account_member
as
select 
	a.accountno as accountno,
	a.money as money,
	m.id as id,
	m.pw as pw,
	m.name as name,
	m.reg as reg,
	m.ssn as ssn
from member m, account a
where m.id = a.id;

select * from account_member;

select
accountno as acc,
id as id,
name as name,
money as money,
ssan as birth
from account_member;