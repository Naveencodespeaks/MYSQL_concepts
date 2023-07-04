# view 
# view is noting but just a sub set to table
select * from bank_details;

select job, age, education, y from bank_details;

(select job, age, education, y from bank_details);

select * from (select job, age, education, y from bank_details) as a where  a.age = 58;
select age, job , age education , y  from bank_details where age = 58;

create view bank_view as select job, age, education, y from bank_details;

select * from bank_view where  age = 58;