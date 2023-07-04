# AND_operator_in_MYSQL

use naveendb1;
desc employee;

select * from Employee_6;

create table Employee_6(
Emp_ID  int, 
FirstName  varchar(30), 
LastName varchar(35),
EmpAge varchar(43),
EmpZone varchar(47)
);



insert into Employee_6(Emp_ID, FirstName, LastName, EmpAge, EmpZone) values (2, 'Tom', 'Brad', 26, 'south');
insert into Employee_6(Emp_ID, FirstName,LastName, EmpAge, EmpZone) values(4, 'Jhon', 'seena', 27, 'South');
insert into Employee_6(Emp_ID, FirstName, LastName, EmpAge, EmpZone) values (3, 'Emma', 'Stone', 23, 'North');
insert into Employee_6(Emp_ID, FirstName,LastName, EmpAge, EmpZone) values(4, 'Jhon', 'seena', 27, 'South');
insert into Employee_6(Emp_ID, FirstName, LastName, EmpAge, EmpZone) values (3, 'Emma', 'Stone', 23, 'North');

insert into Employee_6(Emp_ID, FirstName,LastName, EmpAge, EmpZone) values(4, 'Jhon', 'seena', 27, 'South');
insert into Employee_6(Emp_ID, FirstName, LastName, EmpAge, EmpZone) values (3, 'Emma', 'Stone', 23, 'North');
insert into Employee_6(Emp_ID, FirstName,LastName, EmpAge, EmpZone) values(4, 'Jhon', 'seena', 27, 'South');


# AND_operators

select * from employee_6
where  EmpAge = 26 and EmpZone = 'south';

# AND_operators

select * from employee_6
where  EmpAge = 27 and EmpZone = 'south';

