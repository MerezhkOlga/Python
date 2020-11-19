drop database if exists example;
CREATE DATABASE example;
USE example;
CREATE TABLE users (
	id serial primary key,
    name varchar(100),
    birthday_at date,
    created_at datetime,
    updatet_at datetime);
    
select * from users;

insert into users values (1, 'Ольга', '1997-12-22', now(), now());

select * from users;