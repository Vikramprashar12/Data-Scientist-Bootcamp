create database commission_db;

use commision_db;

create table agent_commission(
	agent_code int primary key, 
    F_name varchar(50), 
    L_name varchar(50), 
    city varchar(30), 
    commission int, 
    mobile_no char(10)
);
