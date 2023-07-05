# ALIAS in MYSQL

/* AlIAS is temperay name that given to the tbale or colummn in a table
  while showniongb the result
  so Alias is good for column more readable and
          it only exsits for the duration of the query!!!!!!!!! 
That means you see a output and you see a new query The previous one and previous column or row column get vanished!!!!!! */


use naveendb1;

select * from employee_6;

select EmpAge As Age_of_Employee_6
from Employee_6;

select firstName as Name1, LastName AS Name2
from employee_6;

desc employee_6;

select * from employee_6;




