# LIKE operator MySql

# Which is use din whare clause to search for a specific pattern in a column,
# * search for a specified pattern

/* Two wild cards:

(%) means Zero, one or more characters
(_) means a single character 

*/

use naveendb1;

select * from employee_6;

# EXAMPLE:- 1

# first name begin with e, 
# we use %  symbol because LIKE operator use (%) wild card for representing 0, 1 or multipule character's
select * from employee_6
Where FirstName LIKE 'e%';

# EXAMPLE:- 2

select * from employee_6
where LastName LIKE '%d';

# EXAMPLE:- 3

select * from employee_6
where EmpZone like '%h';


# EXAMPLE:- 4

select * from employee_6
where LastName LIKE '___d';



