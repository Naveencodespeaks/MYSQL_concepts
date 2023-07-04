show databases;

show tables;

select * from bank_details;

create database Nexa;
use Nexa;
create table Nexa.nexa_details(
age int,
job varchar(30) ,
marital varchar(30) ,
education varchar(30) ,
`default` varchar(30) ,
balance int ,
housing varchar(30) ,
loan varchar(30) ,
contact varchar(30) ,
`day` int ,
`month` varchar(30) ,
duration int ,
campaign int ,
pdays int ,
previous varchar(30) ,
poutcome varchar(30) ,
y varchar(30));



insert into nexa_details value(44,'technician','single','secondary','no',29,'yes','no','unknown',5,'may',151,1,-1,0,'unknown','no'),
(33,'entrepreneur','married','secondary','no',2,'yes','yes','unknown',5,'may',76,1,-1,0,'unknown','no'),
(47,'blue-collar','married','unknown','no',1506,'yes','no','unknown',5,'may',92,1,-1,0,'unknown','no'),
(33,'unknown','single','unknown','no',1,'no','no','unknown',5,'may',198,1,-1,0,'unknown','no'),
(35,'management','married','tertiary','no',231,'yes','no','unknown',5,'may',139,1,-1,0,'unknown','no'),
(28,'management','single','tertiary','no',447,'yes','yes','unknown',5,'may',217,1,-1,0,'unknown','no'),
(42,'entrepreneur','divorced','tertiary','yes',2,'yes','no','unknown',5,'may',380,1,-1,0,'unknown','no'),
(58,'retired','married','primary','no',121,'yes','no','unknown',5,'may',50,1,-1,0,'unknown','no'),
(43,'technician','single','secondary','no',593,'yes','no','unknown',5,'may',55,1,-1,0,'unknown','no'),
(41,'admin.','divorced','secondary','no',270,'yes','no','unknown',5,'may',222,1,-1,0,'unknown','no'),
(29,'admin.','single','secondary','no',390,'yes','no','unknown',5,'may',137,1,-1,0,'unknown','no'),
(53,'technician','married','secondary','no',6,'yes','no','unknown',5,'may',517,1,-1,0,'unknown','no'),
(58,'technician','married','unknown','no',71,'yes','no','unknown',5,'may',71,1,-1,0,'unknown','no'),
(57,'services','married','secondary','no',162,'yes','no','unknown',5,'may',174,1,-1,0,'unknown','no'),
(51,'retired','married','primary','no',229,'yes','no','unknown',5,'may',353,1,-1,0,'unknown','no'),
(45,'admin.','single','unknown','no',13,'yes','no','unknown',5,'may',98,1,-1,0,'unknown','no'),
(57,'blue-collar','married','primary','no',52,'yes','no','unknown',5,'may',38,1,-1,0,'unknown','no'),
(60,'retired','married','primary','no',60,'yes','no','unknown',5,'may',219,1,-1,0,'unknown','no'),
(33,'services','married','secondary','no',0,'yes','no','unknown',5,'may',54,1,-1,0,'unknown','no'),
(28,'blue-collar','married','secondary','no',723,'yes','yes','unknown',5,'may',262,1,-1,0,'unknown','no'),
(56,'management','married','tertiary','no',779,'yes','no','unknown',5,'may',164,1,-1,0,'unknown','no'),
(32,'blue-collar','single','primary','no',23,'yes','yes','unknown',5,'may',160,1,-1,0,'unknown','no'),
(25,'services','married','secondary','no',50,'yes','no','unknown',5,'may',342,1,-1,0,'unknown','no'),
(40,'retired','married','primary','no',0,'yes','yes','unknown',5,'may',181,1,-1,0,'unknown','no'),
(44,'admin.','married','secondary','no',-372,'yes','no','unknown',5,'may',172,1,-1,0,'unknown','no'),
(39,'management','single','tertiary','no',255,'yes','no','unknown',5,'may',296,1,-1,0,'unknown','no'),
(52,'entrepreneur','married','secondary','no',113,'yes','yes','unknown',5,'may',127,1,-1,0,'unknown','no'),
(46,'management','single','secondary','no',-246,'yes','no','unknown',5,'may',255,2,-1,0,'unknown','no'),
(36,'technician','single','secondary','no',265,'yes','yes','unknown',5,'may',348,1,-1,0,'unknown','no'),
(49,'management','married','tertiary','no',378,'yes','no','unknown',5,'may',230,1,-1,0,'unknown','no'),
(60,'admin.','married','secondary','no',39,'yes','yes','unknown',5,'may',208,1,-1,0,'unknown','no'),
(59,'blue-collar','married','secondary','no',0,'yes','no','unknown',5,'may',226,1,-1,0,'unknown','no'),
(51,'management','married','tertiary','no',10635,'yes','no','unknown',5,'may',336,1,-1,0,'unknown','no'),
(57,'technician','divorced','secondary','no',63,'yes','no','unknown',5,'may',242,1,-1,0,'unknown','no'),
(25,'blue-collar','married','secondary','no',-7,'yes','no','unknown',5,'may',365,1,-1,0,'unknown','no'),
(53,'technician','married','secondary','no',-3,'no','no','unknown',5,'may',1666,1,-1,0,'unknown','no'),
(36,'admin.','divorced','secondary','no',506,'yes','no','unknown',5,'may',577,1,-1,0,'unknown','no'),
(37,'admin.','single','secondary','no',0,'yes','no','unknown',5,'may',137,1,-1,0,'unknown','no'),
(44,'services','divorced','secondary','no',2586,'yes','no','unknown',5,'may',160,1,-1,0,'unknown','no'),
(50,'management','married','secondary','no',49,'yes','no','unknown',5,'may',180,2,-1,0,'unknown','no'),
(60,'blue-collar','married','unknown','no',104,'yes','no','unknown',5,'may',22,1,-1,0,'unknown','no');


select * from nexa_details;

select * from nexa_details order by age;

select sum(balance) from nexa_details;
select  avg(balance) from nexa_details;

select * from nexa_details where balance = (select min(balance) from nexa_details);
select * from nexa_details where balance = (select max(balance) from nexa_details);
select * from nexa_details where age = (select avg(age) from nexa_details);
select * from nexa_details where balance = (select avg(balance) from nexa_details);
select * from nexa_details where age = (select min(age) from nexa_details);
select * from nexa_details where age = (select min(age) from nexa_details);


select marital, count(*) from nexa_details group by marital;

select * from nexa_details;

select job, count(*) from nexa_details group by housing;
select marital, count(*), sum(balance) from nexa_details group by  marital;
select marital, count(*), avg(balance) from nexa_details group by marital;

use nexa;
select marital, count(*), sum(balance), avg(balance) from nexa_details group by marital having sum(balance)>300;
select * from nexa_details order by age;

set sql_safe_updates = 0;
update nexa_details set balance = 0 where job = 'unknown';
update nexa_details set contact = 'known', y = 'yes' where month = 'may'; 
update nexa_details set `default` = 'null' where `default` = 'no';

delete from nexa_details where job = 'unknown';

select * from nexa_details;
select count(*) from nexa_details;
use nexa;

select job, count(*) from nexa_details group by job;

DELIMITER &&
create procedure select_pre()
BEGIN
     select * from nexa_details;
END &&

call select_pre()

DELIMITER &&
create procedure vyasa()
BEGIN
	select * from nexa_details;
END&&

call vyasa()


use nexa;
DELIMITER &&
create procedure maharshi1()
BEGIN
	select * from nexa_details;
END&&

call maharshi1()


DELIMITER &&
create procedure select_pre()
BEGIN
	select * from nexa_details;
END &&

call select_pre()


DELIMITER &&
create procedure rama()
BEGIN
	select count(*) from nexa_details;
END&&
call rama();


DELIMITER &&
create procedure laxmana()
BEGIN
	select * from nexa_details where balance = (select min(balance) from nexa_details);
END&&
call laxmana()

DELIMITER &&
create procedure hanuma()
BEGIN
	select job, count(*) from nexa_details group by housing;
END&&

call hanuma()


DELIMITER &&
create procedure sita()
BEGIN
	select * from nexa_details where job = 'retired' and balance >100;
END&&

call sita();



DELIMITER &&
create procedure indra(IN var int)
BEGIN 
	select * from nexa_details where job = 'retaired' and balance >var;
END &&

call indra(200)

DELIMITER &&
create procedure varuna(IN var int, IN var1 varchar(30))
BEGIN 
	select * from nexa_details where job = 'retaired' and balance > var;
END &&

call varuna(10, 'services');


(select job, age, education, y from nexa_details) as a * from a where a.age = 58;

select * from  (select job, age, education, y from nexa_details) as a where a.age = 58;

select job, age, education, y from nexa_details where age = 58;


create view nexa_view as select job, age, education, y from nexa_details;


select *from nexa_view where age = 58;


create table if not exists nexa_details4(
age int,
job varchar(30) ,
marital varchar(30) ,
education varchar(30) ,
`default` varchar(30) ,
balance int ,
housing varchar(30) ,
loan varchar(30) ,
contact varchar(30) ,
`day` int ,
`month` varchar(30) ,
duration int ,
campaign int ,
pdays int ,
previous varchar(30) ,
poutcome varchar(30) ,
y varchar(30));

show tables

insert into nexa_details4 select * from nexa_details;


select * from nexa_details4;

select nexa_details.age, nexa_details.job, nexa_details.marital from nexa_details inner join nexa_details4 on nexa_details.age = nexa_details4.age;

select nexa_details.age, nexa_details.job, nexa_details.marital from nexa_details right join nexa_details4 on nexa_details.age = nexa_details4.age;


create table if not exists nexa_details5(
age int,
job varchar(30) ,
marital varchar(30) ,
education varchar(30) ,
`default` varchar(30) ,
balance int ,
housing varchar(30) ,
loan varchar(30) ,
contact varchar(30) ,
`day` int ,
`month` varchar(30) ,
duration int ,
campaign int ,
pdays int ,
previous varchar(30) ,
poutcome varchar(30) ,
y varchar(30));

insert into nexa_details5 select * from nexa_details where age = 58;

select * from nexa_details5;

select nexa_details.age, nexa_details.job, nexa_details.marital from nexa_details inner join nexa_details5 on nexa_details.age = nexa_details5.age;
select nexa_details.age, nexa_details.job, nexa_details.marital from nexa_details right join nexa_details5 on nexa_details.age = nexa_details5.age;

select nexa_details.age, nexa_details.job, nexa_details.marital from nexa_details left join nexa_details5 on nexa_details.age = nexa_details5.age;