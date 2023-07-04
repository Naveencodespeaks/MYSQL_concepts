# INDEX CONSTRAINT 

use naveendb1;

show databases;
select * from Employee_3;

create index demoindex
on Employee_3(FirstName);

create index demoindex2
on employee_3(FirstName, LastName, EmpDept);

show indexes from Employee_3;


drop index demoindex on employee_3;

show indexes from Employee_3;

