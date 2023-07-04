show databases;
use Dwarakaa;

select * from bank_details;

select age, education from bank_details;

select * from  bank_details where age <30;

select count(*) from bank_details;
select sum(age) from bank_details;
select avg() from bank_details;
set sql_safe_updates = 0;

update bank_details set contact = 'known',  y = 'yes' where month = 'may';

select * from bank_details;

select * from bank_details order by age;

select * from bank_details order by job desc;

delete from bank_details where job = 'unknown';

select * from bank_details; 
