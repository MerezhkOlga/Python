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
insert into users values (4, 'Мария', '1990-02-16', now(), now());

SELECT
SUBSTRING(  dayname(birthday_at + INTERVAL (TO_DAYS(NOW()) - TO_DAYS(birthday_at))/365.25 year), 1, 3) as name_birthday,
COUNT(*)
FROM users
GROUP BY name_birthday;

-- Есть вопрос. В функции SUBSTRING() вторым и третьим аргументом передаем 1, 3. почеу именно эти числа? 
-- Откуда они и зачем? Я попробовала, если вместо 3 подставить 2 или 4 ничего не меняется.