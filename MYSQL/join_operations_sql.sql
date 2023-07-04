# join operations

use dwarakaa;
create table if not exists bank_details(
age int,
job varchar (30),
marital	varchar(30),
education	 varchar(30),
`default`	varchar(30),
balance	int,
housing	varchar(30),
loan	 varchar(30),
contact	varchar(20),
`day` int,	
`month`	 varchar(30),
duration	int,
campaign	int,
pdays	 int,
previous	int,
poutcome	varchar(30),
y		varchar(30));




create table if not exists bank_details2(
age int,
job varchar (30),
marital	varchar(30),
education	 varchar(30),
`default`	varchar(30),
balance	int,
housing	varchar(30),
loan	 varchar(30),
contact	varchar(20),
`day` int,	
`month`	 varchar(30),
duration	int,
campaign	int,
pdays	 int,
previous	int,
poutcome	varchar(30),
y		varchar(30));

create table if not exists bank_details4(
age int,
job varchar (30),
marital	varchar(30),
education	 varchar(30),
`default`	varchar(30),
balance	int,
housing	varchar(30),
loan	 varchar(30),
contact	varchar(20),
`day` int,	
`month`	 varchar(30),
duration	int,
campaign	int,
pdays	 int,
previous	int,
poutcome	varchar(30),
y		varchar(30));

show tables;

insert into bank_details2 select * from bank_details1;

select * from bank_details4;
select * from bank_details3;
select * from bank_details2;
select * from bank_details1;
select * from bank_details;


select  age, job, marital from bnak_details inner join bank_details1 on age;

insert into  bank_details1 select * from bank_details;
select bank_details.age, bank_details.job , bank_details.marital from bank_details inner join bank_details1  on bank_details.age = bank_details1.age;

insert into bank_details4 select * from bank_details1 where age = 58;
select bank_details.age, bank_details.job , bank_details.marital from bank_details inner join bank_details4  on bank_details.age = bank_details4.age;

select bank_details.age, bank_details.job , bank_details.marital from bank_details right join bank_details4  on bank_details.age = bank_details4.age;

select bank_details.age, bank_details.job , bank_details.marital from bank_details left join bank_details4  on bank_details.age = bank_details4.age;

drop database phone;
show databases;
