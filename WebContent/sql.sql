create table mgr(master varchar2(255),
masterId varchar2(255) not null primary key,
masterPass varchar(255),
 masterNum integer);
 drop table member;
 select * from member;
 select count(*) from member;
 select wnum from diary where dday = "2015/12/27";
 create table member (
 Mnum number(10)  NOT NULL PRIMARY KEY,
 name varchar2(255),
id varchar2(255),
pass varchar2(255),
nic varchar2(255)
,gender varchar2(255),
Pnum varchar2(255),
addr varchar2(255)
,point number(20),
email varchar2(255)
);
select * from mgr;
select * from diary;
drop table mgr;

update 

hpwnum

select id,nic,pass from member where mnum = 1;

create table mgr(
master varchar2(255),
masterId varchar2(255) not null primary key,
masterPass varchar(255), 
masterNum number unique); 

CREATE SEQUENCE seq_mgr
INCREMENT BY 1;
CREATE SEQUENCE hpwnum
INCREMENT BY 1;


CREATE SEQUENCE numUp
INCREMENT BY 50;
 
select * from helper;
select count(*) from helper where mnum=1;
select * from diary;
/////다이어리 TABLE 생성/////
create table diary (Mnum number(10) ,id varchar2(255),nic varchar2(255)
,Wnum number(10),memo varchar(255),Dday date,open varchar2(255),
FOREIGN KEY (Mnum)REFERENCES member (Mnum));
CREATE SEQUENCE diarySeq
INCREMENT BY 1;
select * from SUGGESTION ;
select * from honey where good > 0  and ROWNUM <= 5 order by good desc;
select memo,dday from diary  where sysdate < dday and ROWNUM <= 5 and mnum=3 order by dday asc;
select * from honey where good  >  0 and ROWNUM <= 7 order by good DESC;

drop table honey;

select mnum, good,
	RANK() OVER (order by good desc) as rk 
	From hoeny;

SELECT mnum, id,nic,title,wnum,content,good,  
     RANK() OVER (ORDER BY good DESC ) as rk
     FROM honey where ROWNUM  <= 30 ;    
     
SELECT wnum, ROWNUM from honey order by good desc; 
select memo,dday from diary where sysdate< dday and ROWNUM  <= 5 and mnum = 3 order by dday asc;
select * from member;
select * from (select a.*, rownum rn from(select * from honey order by good desc) a) where rn <=  5;
select * from (select a.*, rownum rn from(select * from honey order by
		good desc) a) where rn <= 5;
select * from honey;
		CREATE TABLE "SCOTT"."HONEY" 
   (	"MNUM" NUMBER(20,0), 
	"ID" VARCHAR2(255 BYTE), 
	"NIC" VARCHAR2(255 BYTE), 
	"WNUM" NUMBER(20,0), 
	"TITLE" VARCHAR2(255 BYTE), 
	"COMP" NUMBER(20,0), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"GOOD" NUMBER(20,0) DEFAULT 0, 
	"CLICK" NUMBER(20,0) DEFAULT 0, 
	"DDAY" DATE, 
	"PASS" VARCHAR2(30 BYTE), 
	"REGIP" VARCHAR2(255 BYTE), 
	"FILEPATH" VARCHAR2(255 BYTE) 
   ) 
   SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SCOTT.HONEY
SET DEFINE OFF;
insert into honeycomment values('5','zz');
drop table honeycomment;
create table honeycomment (wnum2 number(20),content2 varchar2(4000));

 select * from (select a.*, rownum rn from(select * from honeycomment) a)
