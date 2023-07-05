# CASE Statement MYSQL

/*
case statemet goes through the condition
and it will retrun a value if the conditon is met
works just like an if  and else statements

 */

use naveendb1;

select * from employee_6;

select FirstName,LastName,EmpAge,
CASE
when EmpAge >25 then 'Employee with exprience. Eligible for the Sr.Profile'
when EmpAge = 27 then 'Employee is mid-experienced level. Eligible!'
else 'Freshers.... new to company'
End As Eligibility
from Employee_6;

