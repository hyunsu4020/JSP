-- 1.
create database basicjsp;    -- 제거: drop database basicjsp;
show databases;
use basicjsp;

-- 2.
create user jspid@'%' identified WITH mysql_native_password  by 'jsppass';
grant all privileges on basicjsp.* to jspid@'%' with grant option;

-- grant select, insert, update, delete, create, drop, alter 
-- on basicjsp.* to 'jspid'@'localhost' 
-- identified by 'jsppass'; 

-- grant select, insert, update, delete, create, drop, alter 
-- on basicjsp.* to 'jspid'@'%' 
-- identified by 'jsppass'; 
-- 주) basicjsp1 jspid1, jsppass; basicjsp2 jspid2,jsppass; 

-- 2-1. 
-- mysql -u jspid -p basicjsp
-- pw: jsppass

3.
create table test (
	num_id int not null primary key auto_increment, 
	title varchar(50) not null, 
	content text not null
);

4. 
create table member (
	id varchar(12) not null primary key,
	passwd varchar(12) not null,
	name varchar(10) not null,
	reg_date datetime not null
);

5. 
create table member1 (
	id varchar(12) not null primary key,
	passwd varchar(12) not null,
	name varchar(10) not null,
	jumin1 varchar(6) not null,
	jumin2 varchar(7) not null,
	email varchar(30),
	blog varchar(50),
	reg_date datetime not null
);

show tables;
desc member;

6. 
insert into member1 values ('hongkd', 'happy', '홍길동', '111111', '1111111', 'hongkd@ks.ac.kr', '홍길동의 블로그', now());

insert into member values ('hongkd', 'happy', '홍길동', now());
insert into member values ('kimkd', 'happy', '김길동', now());
insert into member values ('choijw', 'happy', '최재원', now());
insert into member values ('jangbg', 'happy', '장보고', now());

select * from member;
select * from member where id='hongkd';
select * from member where name like '%길동%';
update member set id='choejw' where id='choijw';
delete from member where id='choejw';

7. MySQL 상에서 Auto Commit 해제, 설정, 확인 방법
set autocommit=0;               // 해제: 0, 설정: 1 
select @@autocommit;         // 해제: 0, 설정: 1 
begin;                                // autocommit=1 이라도 rollback 가능
rollback;                             // 롤백: rollback, 실행: commit

8. JSP 상에서 Auto Commit 해제, 설정 및 트랜잭션 처리 
conn.setAutoCommit(false);   // 해제: false, 설정: true 
conn.commit();                    // 트랜잭션 실행 
conn.rollback();                   // 트랜잭션 철회  


