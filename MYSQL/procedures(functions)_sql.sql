# function in sql are known as procedures;
# procedures;

use dwarakaa;
select * from bank_details;

select * from bank_details;


DELIMITER &&
create procedure select_pre()
BEGIN 
	select * from bank_details;
END&&


call select_pre();


select * from bank_details where job = 'known' and balance >100;  # same query used in procedure formate

DELIMITER &&
create procedure select_pre_filter2()
BEGIN
	select * from bank_details where job = 'retired' and balance >100;
END &&
describe bank_details;

call  select_pre_filter2()

DELIMITER &&
create procedure contact_marital2()
BEGIN
	select * from bank_details where contact = 'known' and marital = 'married';
END &&

call contact_marital2();


DELIMITER &&
create procedure select_pre_filter3(IN var int)
BEGIN
	select * from bank_details where job = 'retired' and balance > var;
END &&

call select_PRE_FILTER3(200);

call select_pre_filter3(30);

DELIMITER &&
create procedure two_variables(IN var int, in var1 varchar(30))
BEGIN
	select * from bank_details where job = var1 and balance >var;
END &&

call two_variables(500,'services');

 call two_variables(500,'services')



