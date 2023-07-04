# delete a  column to an Existing table

use naveendb1;

desc employee;

alter table Employee
Drop column Empdpt;

desc employee;