select * from bank_details;

select age, job from bank_details;

select `default`, age from bank_details; # defalut is a keyword so that that the reason we are using the `` symbole here

select * from bank_details where age = 41; # where is keyword or clouse in SQL 

select * from bank_details where age = 40;

select job from bank_details where  age = 41;

select * from bank_details where job = 'retired' and balance >100 ;

select * from bank_details where education = 'primary' or balance < 100;

select * from bank_details where education = 'primary' and balance < 100;

select distinct job from bank_details;

select * from bank_details order by age; # assending order
select * from bank_details order by age desc; # decending order












