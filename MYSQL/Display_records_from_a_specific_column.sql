# Display records from a specific column

use naveendb1;
show databases;

desc employee_3;
create table Employee_5(
     EmpID int NOT NULL,
     FirstName varchar(50),
     LastName varchar(50),
	 EmpAge int
    
);
insert into Employee_5(EmpID, FirstName, LastName, EmpAge) values (2, 'Tom', 'Brad', 26);
insert into Employee_5(EmpID, FirstName, LastName, EmpAge) values (3, 'Emma', 'Stone', 23);
insert into Employee_5(EmpID, FirstName, LastName, EmpAge) values(4, 'Jhon', 'seena', 27);

# Displaying records from a specific column
select * from employee_5;
SELECT FirstName from employee_5;
select FirstName, LastName, EmpAge from employee_5;



