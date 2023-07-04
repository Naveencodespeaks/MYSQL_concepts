# Alter a Table
# Add & Drop a column from an exsting table


use naveendb1;
desc employee;

# which addes the Emp_Zone to the table

ALter Table Employee
ADD Emp_Zone varchar(45);

desc employee;

ALter Table Employee
add Emp_Area varchar(349);

desc employee;

# To remove the column

alter Table employee
drop column EmpName;


