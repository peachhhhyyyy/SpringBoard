create user spring identified by java;
grant resource, connect to spring;
conn spring/java;

drop table ADDRESS;
drop sequence ADDRESS_SEQ;

create table ADDRESS(
   SEQ number constraint ADDRESS_PK primary key, 
   NAME varchar2(10), 
   ADDR varchar2(20), 
   RDATE date
); 
create sequence ADDRESS_SEQ increment by 1 start with 1 nocache;

insert into ADDRESS values(ADDRESS_SEQ.nextval, '�ѵ���', '�����', SYSDATE);
insert into ADDRESS values(ADDRESS_SEQ.nextval, '�Ӽ���', '�λ��', SYSDATE);
insert into ADDRESS values(ADDRESS_SEQ.nextval, '����', '��õ��', SYSDATE);

commit;

select CONSTRAINT_NAME, CONSTRAINT_TYPE from user_constraints where TABLE_NAME='ADDRESS';
select * from ADDRESS;