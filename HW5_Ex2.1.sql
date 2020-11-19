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
insert into users values (3, 'Даниил', '1985-03-21', now(), now());

SELECT TIMESTAMPDIFF(year, FROM_UNIXTIME(AVG(UNIX_TIMESTAMP(birthday_at))), now()) FROM users;

select * from users;