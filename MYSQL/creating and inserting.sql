# creating and inserting 
show databases;
create database code_speaks;
show databases;
use code_speaks;
create table Employee (
     Emp_ID int8,
    FirstName varchar(40),
    LastName varchar(50),
    EmpAge int8,
    EmpZone varchar(30)
);

DESC Employee;
insert into Employee(Emp_ID,FirstNmae,LastName, EmpAge, EmpZone) values(1,'Jack', 'Sparrow', 25, 'North');
insert into Employee(Emp_ID,FirstName,LastName, EmpAge, EmpZone) values(1,'Jack', 'Sparrow', 25, 'North');
select * from Employee;
insert into Employee(Emp_ID, FirstName, LastName, EmpAge, EmpZone) values (2, 'Tom', 'Brad', 26, 'south');

insert into Employee(Emp_ID, FirstName, LastName, EmpAge, EmpZone) values (3, 'Emma', 'Stone', 23, 'North');
insert into Employee(Emp_ID, FirstName,LastName, EmpAge, EmpZone) values(4, 'Jhon', 'seena', 27, 'South');

select * from Employee;
desc Employee;
use naveendb1;

create table sofware_Employee(
Employee_id int,
Full_Name varchar(300),
First_Name varchar(520),
Last_name varchar(340),
Employee_EmailId varchar(350),
Employee_phoneNumber int(20),
Employee_Age varchar(30),
Employee_role varchar(30),
Employee_Zone varchar(40)
);

show databases;
desc sofware_Employee;

insert into sofware_Employee(Employee_id, Full_Name, First_Name, Last_name, Employee_EmailId, Employee_phoneNumber, Employee_Age, Employee_role, Employee_Zone) values(123456,'Sainaveen','Adepu','Sainaveen','sainaveen005@gmail.com',123456,'26', 'DataScientest', 'India');
insert into sofware_Employee(Employee_id, Full_Name, First_Name, Last_name, Employee_EmailId, Employee_phoneNumber, Employee_Age, Employee_role, Employee_Zone) values(1236, 'RamaKrishna','krishna','Rama','Ramakrishna@gmail.com',1256,'26', 'DataScientest', 'India');
insert into sofware_Employee(Employee_id, Full_Name, First_Name, Last_name, Employee_EmailId, Employee_phoneNumber, Employee_Age, Employee_role, Employee_Zone) values(123,'Avyutha','Govinda','Krishna','Govinda@gmail.com',126,'16', 'DataScientest', 'India');
insert into sofware_Employee(Employee_id, Full_Name, First_Name, Last_name, Employee_EmailId, Employee_phoneNumber, Employee_Age, Employee_role, Employee_Zone) values(1234,'Gopinatha','Krishna','Gopi','gopinatha@gmail.com',123456,'26', 'DataScientest', 'India');
insert into sofware_Employee(Employee_id, Full_Name, First_Name, Last_name, Employee_EmailId, Employee_phoneNumber, Employee_Age, Employee_role, Employee_Zone) values(1456,'','Achutha','Madhava','Vallabha@gmail.com',1256,'26', 'DataScientest', 'India');

select * from sofware_Employee;





