--UC1
create database SQL_client
select name from sys.databases;
use SQL_client

--UC2
create table Address_book_Table
(
s_no int identity(1,1) primary key,
First_name varchar(50),
Last_name varchar(50),
Address varchar(200),
city varchar(25),
state varchar(25),
zip int,
phone_number bigint,
email varchar(50)
);
select * from Address_book_Table
drop table Address_book_Table
--UC3
insert into Address_book_Table values
('karishma','shaik','santhinagar','vijayawada','andhrapadesh',520015,7681645445,'karishma@gmail.com'),
('kalyan','koppisetti','elamanchili','visakhapatnam','andhrapradesh',530017,9603053545,'koppisettikalyan@gmail.com');
 insert into Address_book_Table values
 ('shivaraj','talluri','bavanipuram','ongole','andhrapradesh',540045,9706785634,'shivaraj@gmail.com'),
 ('reshma','shaik','onetown','nellore','andhrapradesh',570013,9441765651,'reshma17@gmail.com');
 --UC4
 update Address_book_Table set address = 'pottisriramulustatue' where First_name = 'reshma';

 --UC5
 delete Address_book_Table where First_name='reshma';

 --UC6

 select * from Address_book_Table where city ='ongole';
 select * from Address_book_Table where city ='vijayawada'or state ='andhrapradesh';
 --UC7
 select count(city) from Address_book_Table
 select count(*) as statecount,state from Address_book_Table group by state; 
select count(*) as citycount,city from Address_book_Table group by city;

--UC8
select * from Address_book_Table order by city;


--UC9
alter table Address_book_Table add contactType varchar(100) not null default 'friends';
update Address_book_Table set contactType  = 'family'    where First_name = 'karishma'; 

--UC10
select count(*) as countpersons,contactType from Address_book_Table group by contactType;

--UC11

insert into Address_book_Table values('reshma','shaikh','benzcircle','chennai','tamilnadu',453002,6762347834,'reshmashaikh@gmail.com','family'),
('reshma','shaikh','benzcircle','chennai','tamilnadu',453002,6762347834,'reshmashaikh@gmail.com','friend');
select * from Address_book_Table;



