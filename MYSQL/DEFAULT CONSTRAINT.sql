# DEFAULT CONSTRAINT

use naveendb1;

create table Employee_3(
Emp_Id int not null,
FirstName varchar(40),
LastName varchar(89),
EmpDept varchar(255) default 'operations'
);
desc Employee_3;

insert into Employee_3(Emp_Id, FirstName,LastName) values (1, 'Emma', 'Stone');


desc Employee_3;


insert into Employee_3(Emp_Id, FirstName,LastName,EmpDept ) values (2, 'govinda', 'Rama', 'DataScientist');
insert into Employee_3(Emp_Id, FirstName,LastName,EmpDept ) values (3, 'Krishna', 'Hari', 'Data Analyst');
insert into Employee_3(Emp_Id, FirstName,LastName,EmpDept ) values (4, 'Avytha', 'gouri', 'Machine learning');
insert into Employee_3(Emp_Id, FirstName,LastName,EmpDept ) values (5, 'Gopika', 'vallabhba', 'software Engineering');
insert into Employee_3(Emp_Id, FirstName,LastName,EmpDept ) values (6, 'Radha', 'Madhava', 'Bussines Analyst');
insert into Employee_3(Emp_Id, FirstName,LastName) values (7, 'Jaganatha', 'Puri');
insert into Employee_3(Emp_Id, FirstName,LastName) values (8, 'Baladeva', 'puri');
insert into Employee_3(Emp_Id, FirstName,LastName) values (9, 'Subadhra', 'puri');
insert into Employee_3(Emp_Id, FirstName,LastName) values (10, 'keshava', 'Narayana');


select * from Employee_3;
