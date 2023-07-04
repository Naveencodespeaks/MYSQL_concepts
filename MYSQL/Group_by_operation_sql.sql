# group by operations
select marital, count(*) from bank_details group by marital;

select marital, count(*), sum(balance) from bank_details group by marital;
select marital, count(*), sum(balance) , avg(balance) from bank_details group by marital;
select marital, count(*), sum(balance),  avg(balance) from bank_details group by marital having sum(balance) >300;

select * from bank_details;

select * from bank_details;

set sql_safe_updates = 0;
update bank_details set balance  = 0  where job = 'unknown';
update bank_details set contact = 'known',  y = 'yes' where month = 'may';
set sql_safe_updates = 0;
update bank_details set `default` = 'NULL' where `default`='no';

delete  from bank_details where job = 'unknown';


