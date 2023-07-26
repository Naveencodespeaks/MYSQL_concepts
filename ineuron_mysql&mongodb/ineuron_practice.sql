show databases;

use ineuron;
create table Bank_details(
age int,
job varChar (30),
marital	varChar(30),
education	 varChar(30),
`default`	varchar(30),
balance	int,
housing	varchar(30),
loan	 varchar(30),
contact	varchar(10),
`day` int,	
`month`	 varchar(30),
duration	int,
campaign	int,
pdays	 int,
previous	int,
poutcome	varchar(30),
y		varchar(30));

show tables;
drop table bank_details;
drop table bank_details1;
drop table bankdetails;


insert into bank_details values(30,"unemployed","married","primary","no",1787,"no","no","unknown",19,"oct",79,1,-1,0,"unknown","no"),
(41,"entrepreneur","married","tertiary","no",221,"yes","no","unknown",14,"may",57,2,-1,0,"unknown","no"),
(43,"services","married","primary","no",-88,"yes","yes","cellular",17,"apr",313,1,147,2,"failure","no"),
(39,"services","married","secondary","no",9374,"yes","no","unknown",20,"may",273,1,-1,0,"unknown","no"),
(43,"admin.","married","secondary","no",264,"yes","no","cellular",17,"apr",113,2,-1,0,"unknown","no"),
(36,"technician","married","tertiary","no",1109,"no","no","cellular",13,"aug",328,2,-1,0,"unknown","no"),
(20,"student","single","secondary","no",502,"no","no","cellular",30,"apr",261,1,-1,0,"unknown","yes"),
(31,"blue-collar","married","secondary","no",360,"yes","yes","cellular",29,"jan",89,1,241,1,"failure","no"),
(40,"management","married","tertiary","no",194,"no","yes","cellular",29,"aug",189,2,-1,0,"unknown","no"),
(56,"technician","married","secondary","no",4073,"no","no","cellular",27,"aug",239,5,-1,0,"unknown","no"),
(37,"admin.","single","tertiary","no",2317,"yes","no","cellular",20,"apr",114,1,152,2,"failure","no"),
(25,"blue-collar","single","primary","no",-221,"yes","no","unknown",23,"may",250,1,-1,0,"unknown","no"),
(38,"management","divorced","unknown","no",0,"yes","no","cellular",18,"nov",96,2,-1,0,"unknown","no"),
(42,"management","divorced","tertiary","no",16,"no","no","cellular",19,"nov",140,3,-1,0,"unknown","no"),
(44,"services","single","secondary","no",106,"no","no","unknown",12,"jun",109,2,-1,0,"unknown","no"),
(44,"entrepreneur","married","secondary","no",93,"no","no","cellular",7,"jul",125,2,-1,0,"unknown","no"),
(26,"housemaid","married","tertiary","no",543,"no","no","cellular",30,"jan",169,3,-1,0,"unknown","no"),
(41,"management","married","tertiary","no",5883,"no","no","cellular",20,"nov",182,2,-1,0,"unknown","no"),
(55,"blue-collar","married","primary","no",627,"yes","no","unknown",5,"may",247,1,-1,0,"unknown","no"),
(67,"retired","married","unknown","no",696,"no","no","telephone",17,"aug",119,1,105,2,"failure","no"),
(56,"self-employed","married","secondary","no",784,"no","yes","cellular",30,"jul",149,2,-1,0,"unknown","no"),
(53,"admin.","married","secondary","no",105,"no","yes","cellular",21,"aug",74,2,-1,0,"unknown","no"),
(68,"retired","divorced","secondary","no",4189,"no","no","telephone",14,"jul",897,2,-1,0,"unknown","yes"),
(31,"technician","married","secondary","no",171,"no","no","cellular",27,"aug",81,3,-1,0,"unknown","no"),
(59,"management","married","secondary","no",42,"no","no","cellular",21,"nov",40,1,-1,0,"unknown","no"),
(32,"management","single","tertiary","no",2536,"yes","no","cellular",26,"aug",958,6,-1,0,"unknown","yes"),
(49,"technician","married","tertiary","no",1235,"no","no","cellular",13,"aug",354,3,-1,0,"unknown","yes"),
(42,"admin.","divorced","secondary","no",1811,"yes","no","unknown",14,"may",150,1,-1,0,"unknown","no"),
(78,"retired","divorced","primary","no",229,"no","no","telephone",22,"oct",97,1,-1,0,"unknown","yes"),
(32,"blue-collar","married","secondary","no",2089,"yes","no","cellular",14,"nov",132,1,-1,0,"unknown","yes"),
(33,"management","married","secondary","no",3935,"yes","no","cellular",6,"may",765,1,342,2,"failure","yes"),
(23,"services","single","tertiary","no",363,"yes","no","unknown",30,"may",16,18,-1,0,"unknown","no"),
(38,"management","single","tertiary","no",11971,"yes","no","unknown",17,"nov",609,2,101,3,"failure","no"),
(36,"management","single","tertiary","no",553,"no","no","cellular",11,"aug",106,2,-1,0,"unknown","no"),
(52,"blue-collar","married","secondary","no",1117,"yes","no","cellular",13,"may",365,1,-1,0,"unknown","no"),
(32,"technician","married","tertiary","no",396,"yes","no","cellular",13,"may",205,3,-1,0,"unknown","no"),
(32,"technician","single","tertiary","no",2204,"yes","no","cellular",21,"nov",11,4,-1,0,"unknown","no"),
(34,"management","single","tertiary","no",872,"yes","no","unknown",7,"may",105,2,-1,0,"unknown","no"),
(55,"blue-collar","married","primary","no",145,"no","no","telephone",2,"feb",59,3,5,2,"other","no"),
(26,"blue-collar","married","primary","no",0,"yes","no","unknown",21,"may",425,1,-1,0,"unknown","no"),
(32,"entrepreneur","single","primary","yes",-849,"yes","yes","cellular",4,"feb",204,1,-1,0,"unknown","no"),
(61,"admin.","married","unknown","no",4629,"yes","no","cellular",27,"jan",181,1,92,1,"success","yes"),
(45,"blue-collar","divorced","primary","no",844,"no","no","unknown",5,"jun",1018,3,-1,0,"unknown","yes"),
(37,"technician","single","secondary","no",228,"yes","no","cellular",20,"aug",1740,2,-1,0,"unknown","no"),
(38,"technician","single","secondary","no",50,"no","no","cellular",29,"aug",98,2,-1,0,"unknown","no"),
(34,"technician","married","tertiary","no",1539,"yes","no","cellular",15,"jun",441,1,56,1,"other","yes");


select * from bank_details;

select age,job from bank_details;

select `default`, age from bank_details;

select * from bank_details where age = 41; 

select job from bank_details where age = 41;

select * from bank_details where job = 'retired' and balance > 100;

select * from bank_details where education = 'primary' or balance < 100;

select distinct job from bank_details;

select * from bank_details order by age;

select * from bank_details order by age desc;

select count(*) from bank_details;

select sum(balance) from bank_details;

select avg(balance) from bank_details;
select min(balance) from bank_details;
select * from bank_details where balance = (select min(balance) from bank_details);

select marital, count(*) from bank_details group by marital; 

select marital, count(*), sum(balance) from bank_details group by marital;
select marital, count(*), sum(balance), avg(balance) from bank_details group by marital;
select marital, count(*), sum(balance), avg(balance) from bank_details group by marital having sum(balance) > 300;

select * from bank_details;

set sql_safe_updates = 0;

update bank_details set balance = 0 where job = 'unkwon';

update bank_details set contact = 'known', y = 'yes' where month = 'may';

update bank_details set `default` = 'NULL' where `default` = 'no';

delete from bank_details where job = 'unknown';

# functions 
# procedures

DELIMITER &&
create procedure select_pre()
BEGIN
	select * from bank_details;
END &&
call select_pre()

DELIMITER &&
create procedure select_pre_fliters()
BEGIN
	select marital, count(*), sum(balance) from bank_details group by marital;
END &&
call select_pre_fliters()

DELIMITER &&
create procedure select_fliters()
BEGIN
	select * from bank_details where job = 'retired' and balance > 100;
END &&
call select_fliters()

DELIMITER &&
create procedure select_fliters1(IN var int)
BEGIN
	select * from bank_details where job = 'retired' and balance > var;
END &&
call select_fliters1(300);
call select_fliters1(200)

DELIMITER &&
create procedure select_fliters2(IN var int, IN var1 varchar(30))
BEGIN
	select * from bank_details where job = var1 and balance > var;
END &&
call select_fliters2(200,'services');
call select_fliters1(200)
call select_fliters()

select job, age, education, y from bank_details;
# view
select * from (select job, age, education, y from bank_details) as a where a.age = 33;	  

create view bank_view as select  job, age, education, y from bank_details;

select * from bank_view where age = 60;

#### update 

update bank_details set job = 'white-collar' where job = 'blue-collar';

select * from bank_details;

#### join opetations

create table bank_details1(
age int,
job varChar (30),
marital	varChar(30),
education	 varChar(30),
`default`	varchar(30),
balance	int,
housing	varchar(30),
loan	 varchar(30),
contact	varchar(10),
`day` int,	
`month`	 varchar(30),
duration	int,
campaign	int,
pdays	 int,
previous	int,
poutcome	varchar(30),
y		varchar(30)
);

insert into bank_details1 select * from bank_details;

select * from bank_details;
drop table bank_detail1;

#### join operations

select bank_details.age, bank_details.job, bank_details.marital from bank_details inner join bank_details1 on bank_details.age  = bank_details1.age;

select bank_details.age, bank_details.job, bank_details.marital from bank_details right join bank_details1 on bank_details.age  = bank_details1.age;


create table bank_details2(
age int,
job varChar (30),
marital	varChar(30),
education	 varChar(30),
`default`	varchar(30),
balance	int,
housing	varchar(30),
loan	 varchar(30),
contact	varchar(10),
`day` int,	
`month`	 varchar(30),
duration	int,
campaign	int,
pdays	 int,
previous	int,
poutcome	varchar(30),
y		varchar(30)
);

insert into bank_details2 select * from bank_details where age= 42;

select * from bank_details2;

select bank_details.age, bank_details.job, bank_details.marital from bank_details right join bank_details2 on bank_details.age  = bank_details2.age;


select bank_details.age, bank_details.job, bank_details.marital from bank_details left join bank_details2 on bank_details.age  = bank_details2.age;






