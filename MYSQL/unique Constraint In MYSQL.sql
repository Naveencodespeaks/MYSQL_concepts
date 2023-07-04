# unique Constraint In MYSQL
use naveendb1;
create table Hardware__employee(
EmpID int NOT NULL,
First_Name Varchar(255),
Last_Name varchar(266),
unique(EmpID)
);
desc Hardware__employee;

create table software_Employee(
EmpID int NOT NULL,
First_Name Varchar(255),
Last_Name varchar(266),
unique(EmpID)
);

desc software_Employee;
select * from software_Employee;

