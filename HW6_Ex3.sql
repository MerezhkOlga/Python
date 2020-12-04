use snet2910;

select * from users; -- Все они созданы одновременно, поэтому подредактирую 11 (на всякий) чтобы были помоложе))

UPDATE users SET create_at = now() WHERE id = 50;
UPDATE users SET create_at = now() WHERE id = 100;
UPDATE users SET create_at = now() WHERE id = 150;
UPDATE users SET create_at = now() WHERE id = 200;
UPDATE users SET create_at = now() WHERE id = 53;
UPDATE users SET create_at = now() WHERE id = 103;
UPDATE users SET create_at = now() WHERE id = 153;
UPDATE users SET create_at = now() WHERE id = 203;
UPDATE users SET create_at = now() WHERE id = 30;
UPDATE users SET create_at = now() WHERE id = 80;
UPDATE users SET create_at = now() WHERE id = 130;

select * from users order by create_at desc limit 10; -- вывела 10 самых молодых 

select * from posts where user_id in (select id from users order by create_at desc limit 10); 
-- Хотела сделать так, но он выдает ошибку 1235 мол This version of MySQL doesn't yet support 'LIMIT & IN/ALL/ANY/SOME subquery'	
-- Тогда попробую записать молодых в отдельную таблицу по образу и подобию, больше идей нет...

DROP TABLE IF EXISTS young_users;
CREATE TABLE young_users (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) DEFAULT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(120) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `hometown` varchar(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `photo_id` bigint unsigned DEFAULT NULL,
  `create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `pass` char(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`));
insert into young_users
select * from users order by create_at desc limit 10;

select * from young_users;

select * from posts where user_id in (select id from young_users); -- посты молодых пользователей

select * from likes_posts where post_id in (select id from posts where user_id in (select id from young_users)); -- все лайки к постам молодых

select l.id, l.post_id, p.user_id from likes_posts l join posts p where post_id in (select id from posts where user_id in (select id from young_users)) and p.id = l.post_id order by user_id; 
-- объединила так, чтобы выводились id лайка, поста и его молодого владельца одновременно

select p.user_id, count(l.id) count_likes from likes_posts l join posts p where post_id in (select id from posts where user_id in (select id from young_users)) and p.id = l.post_id group by user_id;
-- Посчитала количество лайков, которые получил каждый молодой!

select 
	p.user_id, 
    concat(u.lastname, ' ', u.firstname) as username, 
    u.create_at, 
    count(l.id) count_likes 
from likes_posts l join posts p join users u 
where post_id in (select id from posts where user_id in (select id from young_users)) 
and p.id = l.post_id
and u.id = p.user_id
group by user_id;
-- оформила покрасвее, чтобы еще имя и дата создания выводились. Кажется, получилось))
