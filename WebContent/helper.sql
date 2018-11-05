 create table helper (
 mnum number(10) not null,
 snum number(10) not null,
 wnum number(10) not null primary key,
 context varchar2(255) not null,
 helpdate date,
 sendcheck varchar2(255)
 );

 drop table helper;
 
 select * from HELPER;
 
CREATE SEQUENCE seq_helper
INCREMENT BY 1;

drop sequence seq_helper ;

CREATE SEQUENCE wnum
INCREMENT BY 1;