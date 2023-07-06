# joins in mysql
/* 
inner join
	   (# if the both the table's have the matching values the result will be same)
Left join
		(you can return all the records from the left table)
Right join
        (you can return all the records from the Right table)
full join (Not support in mysql)
*/
######################################################################################################

# inner join
	  # (# if the both the table's have the matching values the result will be same)
use leo;

select * from employee;
select * from employee_5;

select employee.EmpID,employee_5.EmpZone from employee inner join employee_5 on employee.EmpID = employee_5.EmpID;



      

