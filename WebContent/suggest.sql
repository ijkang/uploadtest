--------------------------------------------------------
--  파일이 생성됨 - 목요일-10월-20-2016   
--------------------------------------------------------
DROP TABLE "SCOTT"."SUGGESTION";
--------------------------------------------------------
--  DDL for Table SUGGESTION
--------------------------------------------------------

  CREATE TABLE "SCOTT"."SUGGESTION" 
   (	"MNUM" NUMBER(20,0), 
	"TITLE" VARCHAR2(255 BYTE), 
	"CONTENT" VARCHAR2(255 BYTE), 
	"HAZARD" NUMBER(20,0), 
	"DDAY" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SCOTT.SUGGESTION
SET DEFINE OFF;
Insert into SCOTT.SUGGESTION (MNUM,TITLE,CONTENT,HAZARD,DDAY) values (null,'이번엔','되니?',2,to_date('16/10/19','RR/MM/DD'));
Insert into SCOTT.SUGGESTION (MNUM,TITLE,CONTENT,HAZARD,DDAY) values (null,'뛟','뛻!',4,to_date('16/10/19','RR/MM/DD'));
Insert into SCOTT.SUGGESTION (MNUM,TITLE,CONTENT,HAZARD,DDAY) values (null,'미미미미','룰룰루',1,to_date('16/10/19','RR/MM/DD'));
Insert into SCOTT.SUGGESTION (MNUM,TITLE,CONTENT,HAZARD,DDAY) values (null,'얌마','야야얌마',1,to_date('16/10/19','RR/MM/DD'));
Insert into SCOTT.SUGGESTION (MNUM,TITLE,CONTENT,HAZARD,DDAY) values (null,'비바바','비바',1,to_date('16/10/19','RR/MM/DD'));
Insert into SCOTT.SUGGESTION (MNUM,TITLE,CONTENT,HAZARD,DDAY) values (null,'미','미',1,to_date('16/10/19','RR/MM/DD'));
Insert into SCOTT.SUGGESTION (MNUM,TITLE,CONTENT,HAZARD,DDAY) values (null,'닫아','주세요!',1,to_date('16/10/19','RR/MM/DD'));
Insert into SCOTT.SUGGESTION (MNUM,TITLE,CONTENT,HAZARD,DDAY) values (null,'미','미',1,to_date('16/10/19','RR/MM/DD'));
Insert into SCOTT.SUGGESTION (MNUM,TITLE,CONTENT,HAZARD,DDAY) values (null,'미','미',1,to_date('16/10/19','RR/MM/DD'));
Insert into SCOTT.SUGGESTION (MNUM,TITLE,CONTENT,HAZARD,DDAY) values (null,'미미미','미미미미',1,to_date('16/10/19','RR/MM/DD'));
--------------------------------------------------------
--  Ref Constraints for Table SUGGESTION
--------------------------------------------------------

  ALTER TABLE "SCOTT"."SUGGESTION" ADD FOREIGN KEY ("MNUM")
	  REFERENCES "SCOTT"."MEMBER" ("MNUM") ENABLE;
