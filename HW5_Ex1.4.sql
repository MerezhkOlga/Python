CREATE DATABASE if not exists example;
USE example;
drop table if exists users;
CREATE TABLE users (
	id serial primary key,
    name varchar(100),
    birthday_at date,
    created_at datetime,
    updatet_at datetime);
    
insert into users values (1, 'Ольга', '1997-12-22', now(), now());
insert into users values (2, 'Анна', '1990-03-07', now(), now());
insert into users values (3, 'Даниил', '1985-03-31', now(), now());
insert into users values (4, 'Мария', '1998-08-08', now(), now());
insert into users values (5, 'София', '1989-05-21', now(), now());
insert into users values (6, 'Ярослав', '1990-02-16', now(), now());


SELECT name, MONTHNAME(birthday_at) as monthname  FROM users where MONTHNAME(birthday_at) in ('May', 'August');

