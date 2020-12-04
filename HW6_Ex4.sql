select * from likes_posts;
select * from users;

select l.id, u.gender from likes_posts l join users u where u.id = l.user_id; -- Вывела id лайка и пол пользователя, который его поставил

select u.gender, count(l.id) from likes_posts l join users u where u.id = l.user_id group by gender; -- Посчитала.))

select 
	(select 'Мужчины' where u.gender = 'm' union select 'Женщины' where u.gender = 'f') gender, 
    count(l.id) count_likes 
from likes_posts l join users u 
where u.id = l.user_id 
group by gender; 
-- Сделала покрасивее))
