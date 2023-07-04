# modify a column MYSQL

use naveendb1;

desc employee;

alter table employee
add column emptdept varchar(255);

desc employee;

# modifying the column from varchar to int

alter table employee
modify column emptdept int;

desc employee;

# modifying the column from varchar ton int

alter table employee
modify column Emp_Age  varchar(30);

desc employee;