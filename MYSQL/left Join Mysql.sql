# left Join Mysql

# left join return all the row's in the left table if there are no matches in the right table

use leo; 
select * from employee_8;
select * from Department;

# left JOin 

select employee_8.EmpID, Department.Dept_name from Department left join employee_8 on employee_8.Dept_Id = Department.Dept_Id;