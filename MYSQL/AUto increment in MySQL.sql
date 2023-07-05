# AUto increment in MySQL


use naveendb1;

select * from employee_6;

create database leo;

use leo;

create table employee
(
EmpID int not null auto_increment,
FirstName varchar(30),
LastName varchar(50),
EmpAge int,
EmpZone varchar(30),
primary key (EmpID)

);

desc employee;

insert into employee(FirstName,LastName,EmpAge,EmpZone) values('jack', 'sparrow', 28, 'East');
insert into employee(FirstName,LastName,EmpAge,EmpZone) values('jhon', 'sena', 26, 'West');
insert into employee(FirstName,LastName,EmpAge,EmpZone) values('may', 'back', 25, 'North');
insert into employee(FirstName,LastName,EmpAge,EmpZone) values('Emma', 'Stone', 23, 'South');
insert into employee(FirstName,LastName,EmpAge,EmpZone) values('Bat', 'Man', 24, 'West');
insert into employee(FirstName,LastName,EmpAge,EmpZone) values('super', 'Man', 27, 'North');
insert into employee(FirstName,LastName,EmpAge,EmpZone) values('wonder', 'Women', 22, 'South');

desc employee;

select * from employee;
