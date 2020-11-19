drop database if exists example;
CREATE DATABASE example;
USE example;
CREATE TABLE users (
	id serial primary key,
    name varchar(100),
    birthday_at date,
    created_at VARCHAR(20),
    updatet_at VARCHAR(20));
    
select * from users;

insert into users values (1, 'Ольга', '1997-12-22', '20.10.2017 8:10', '20.10.2017 8:10');

-- select convert(datetime, created_at) from users; -- решалиа перед тем, как записывать попробовать вывести преобразованную дату, 
													-- но он не дает и я не понимаю, почему :((

-- alter table users change created_at convert(datetime, created_at); -- тут я думала как же его преобразовать...

-- insert into users values (2, 'Анна', '1990-03-07', convert(datetime, '20.10.2017 8:10'), convert(datetime, '20.10.2017 8:10')); -- попыталась 
																					-- хотя бы записать новое в нужном формате и тоже не вышло...

-- В общем, я хотя бы попыталась...