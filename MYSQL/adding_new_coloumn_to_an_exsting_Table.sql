# add new column to an Existing table

use naveendb1;

desc Employee;

alter table Employee
add EmpDPT varchar(30);

desc Employee