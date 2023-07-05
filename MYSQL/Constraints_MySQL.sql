# Constraints (Specifies the reules for data in atable)
/* 
Not NUll :- (Won't have a null value)
###################################################
unique :- (All The values in a column are  unique. Example:- ID)
###################################################
primary key :-  (Uniquely identify each row in atable,. Example: Emp Id, SSN No., License NO, Student Roll no)
####################################################
foreign key :- (Uniquelly identify)
####################################################
check :- (All  values in a column satisfies a specific condition Example:- Age > 20)
####################################################
default:- (Set a default value)
####################################################
Index :-(Create & Retrieve Data quickly from a database)
*/

# 1:- Not NUll :-

use leo;

create table employee_1
(
EmpId int not null,
FirstName varchar(39),
LastName varchar(67),
EmpAge int
);
desc employee_1;

insert into employee_1(EmpId ,FirstName,LastName,EmpAge) values(null,'jack', 'sparrow', 28);
insert into employee_1(EmpId ,FirstName,LastName,EmpAge) values(2,'jhon', 'sena', 26);
insert into employee_1(EmpId ,FirstName,LastName,EmpAge) values(3,'may', 'back', 25);
insert into employee_1(EmpId ,FirstName,LastName,EmpAge) values(4,'Emma', 'Stone', 23);
insert into employee_1(EmpId ,FirstName,LastName,EmpAge) values(5,'Bat', 'Man', 24);
insert into employee_1(EmpId ,FirstName,LastName,EmpAge) values(6,'super', 'Man', 27);
insert into employee_1(EmpId ,FirstName,LastName,EmpAge) values(7,'wonder', 'Women', 22);

select * from employee_1;
#####################################################################################################
# unique :- (All The values in a column are  unique. Example:- ID)

create table employee_2
(
EmpId int not null,
FirstName varchar(39),
LastName varchar(67),
unique(EmpId),
EmpAge int,
EmpZone varchar(20)
);

desc employee_2;
################################################################################################
# primary key :-  (Uniquely identify each row in atable,. Example: Emp Id, SSN No., License NO, Student Roll no)

use leo;

create table employee_6
(
EmpId  int not null,
FirstName varchar(30),
Lastname varchar(45),
EmpZone varchar(30),
primary key (EmpId)
);

desc employee_6;

insert into employee_6(EmpId,FirstName,LastName,EmpZone) values(1,'jhon', 'sena', 'North');
insert into employee_6(EmpId,FirstName,LastName,EmpZone) values(2,'may', 'back', 'south');
insert into employee_6(EmpId,FirstName,LastName,EmpZone) values(3,'Emma', 'Stone', 'East');
insert into employee_6(EmpId,FirstName,LastName,EmpZone) values(4,'Bat', 'Man', 'West');
insert into employee_6(EmpId,FirstName,LastName,EmpZone) values(5,'super', 'Man', 'Nort_East');
select * from employee_6




#################################################################################################
# check :- (All  values in a column satisfies a specific condition Example:- Age > 20)

create table employee_3
(
EmpId  int ,
FirstName varchar(30),
Lastname varchar(45),
EmpAge int,
check(EmpAge>20)
);

desc employee_3;
# insert into employee_3(EmpId,FirstName,LastName,EmpAge) values(1,'jhon', 'max', 16); # check(EmpAge>20) should be more then 20
insert into employee_3(EmpId,FirstName,LastName,EmpAge) values(2,'jhon', 'sena', 26);
insert into employee_3(EmpId,FirstName,LastName,EmpAge) values(3,'may', 'back', 25);
insert into employee_3(EmpId,FirstName,LastName,EmpAge) values(4,'Emma', 'Stone', 23);
insert into employee_3(EmpId,FirstName,LastName,EmpAge) values(5,'Bat', 'Man', 24);
insert into employee_3(EmpId,FirstName,LastName,EmpAge) values(6,'super', 'Man', 27);

select * from employee_3;

###############################################################################################################

# default:- (Set a default value)

create table employee_5
(
EmpId  int not null,
FirstName varchar(30),
Lastname varchar(45),
EmpDept varchar(40) default 'operation'
);

insert into employee_5(EmpId,FirstName,LastName) values(2,'jhon', 'sena');
insert into employee_5(EmpId,FirstName,LastName) values(3,'may', 'back');
insert into employee_5(EmpId,FirstName,LastName) values(4,'Emma', 'Stone');
insert into employee_5(EmpId,FirstName,LastName) values(5,'Bat', 'Man');
insert into employee_5(EmpId,FirstName,LastName) values(6,'super', 'Man');

select * from employee_5;

###############################################################################################################

# Index :-(Create & Retrieve Data quickly from a database) 


use leo;

 select * from employee;
 
create index demoindex_1 on employee(FirstName);
create index demoindex_2 on employee(FirstName,LastName, EmpZone);

show indexes from employee;

drop index demoindex_1 on employee;

show indexes from employee;
 
###############################################################################################################







