show databases;
create database ineuron;
use ineuron;

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

describe bank_details;
show tables;


insert into bank_details values(58,	"management","married","tertiary","no",2143,"yes","no","unknown",5,"may",261,1,-1,0,"unknown","no");	





