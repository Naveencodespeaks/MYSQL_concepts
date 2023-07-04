# Check Constraint MYSQL

Create table Employe2(
EmpID int not null,
FirstName varchar(225),
LastName Varchar(203),
EmpAge int,
check(EmpAge>20)
);

desc Employe2;
insert into Employe2(EmpID, FirstName, LastName, EmpAge) values (1, 'Tom', 'Hanks', 18);
# insert into Employe2(EmpID, FirstName, LastName, EmpAge) values (1, 'Tom', 'Hanks', 28);

select * from Employe2;