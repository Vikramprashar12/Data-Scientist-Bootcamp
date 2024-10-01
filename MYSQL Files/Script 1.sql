create database new_db;

use new_db; 

create table table_1(
	col_1 integer not null, 
    col_2 varchar(20) not null, 
    col_3 decimal,
    col_4 date, 
    col_5 boolean
);
-- Demonstrating the use of the ALTER command

alter table table_1
add column col_6 integer;

select * from table_1;

alter table table_1
modify col_6 char(8);

alter table table_1 
rename column col_6 to col_7;

alter table table_1
drop column col_7;

alter table table_1
add constraint pk_key primary key (col_1);

use new_db;

insert into table_1 
(col_1,col_2,col_3,col_4,col_5)
values 
(1,'asd',200,05/04/2024,1),(1,'asd',200,05/04/2024,1),(1,'asd',200,05/04/2024,1);