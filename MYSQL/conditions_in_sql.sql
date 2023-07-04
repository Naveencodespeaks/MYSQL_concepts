show databases;
select * from bank_details;
select count(*) from bank_details;

select count(*) from bank_details;

select sum(balance) from bank_details;
select avg(balance) from bank_details;
select min(balance) from bank_details;

select * from bank_details where balance = (select min(balance) from bank_details); # nested querry 