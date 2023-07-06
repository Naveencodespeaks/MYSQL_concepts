# Right Join Mysql

# Right join return all the row's in the Right table if there are no matches in the Left table;

use leo;

select * from employee_8;

select employee_8.EmpID, Department.Dept_name from Department Right join employee_8 on employee_8.Dept_Id = Department.Dept_Id;