select from_user_id, count(*) c from messages group by from_user_id order by c desc; 
-- Узнала сколько сообщений писал каждый пользователь, чтобы выбрать для задания того, кто пообщительнее. Возьму 70ого.

select count(*) from messages where from_user_id = 70 or to_user_id = 70; 
-- посмотрю, сколько он всего писал сообщений и сколько писали ему. вполне достаточно, думаю.

select * from 
	(select initiator_user_id from friend_requests fr1 where target_user_id = 70 and status='approved'
		union
	select target_user_id from friend_requests fr2 where initiator_user_id = 70 and status='approved') as fr_list;  
-- Получила список друзей 70ого.

select * from messages where from_user_id = 70 and to_user_id in 
	(select initiator_user_id from friend_requests fr1 where target_user_id = 70 and status='approved'
		union
	select target_user_id from friend_requests fr2 where initiator_user_id = 70 and status='approved')
union    
select * from messages where to_user_id = 70 and from_user_id in 
	(select initiator_user_id from friend_requests fr1 where target_user_id = 70 and status='approved'
		union
	select target_user_id from friend_requests fr2 where initiator_user_id = 70 and status='approved'); 
-- Посмотрела все его сообщения друзьям и от друзей. Как-то неравномерно. добавлю еще сообщения, чтобы было,что сравнивать.

delete from  messages where id = 2000;
delete from  messages where id = 1999; 
-- Вот это я зря сделала, тупанула. хотела удалить 2, а потом добавить 2, но что-то не вышло, пойду другим путем.

UPDATE messages SET from_user_id = 70, to_user_id = 46, message = 'Дратути.' WHERE id = 2001;
UPDATE messages SET from_user_id = 202, to_user_id = 70, message = 'Как дела?' WHERE id = 2002; 
-- подредачила последние 2 строки из таблицы messages чтобы они были связаны с 70ым и его друзьями.


select to_user_id as fr_id, message from messages where 
from_user_id = 70 and to_user_id in 
	(select initiator_user_id from friend_requests fr1 where target_user_id = 70 and status='approved'
		union
	select target_user_id from friend_requests fr2 where initiator_user_id = 70 and status='approved') 
union
select from_user_id as fr_id, message from messages where 
to_user_id = 70 and from_user_id in 
	(select initiator_user_id from friend_requests fr1 where target_user_id = 70 and status='approved'
		union
	select target_user_id from friend_requests fr2 where initiator_user_id = 70 and status='approved')
order by fr_id;                                                         
-- это я посмотрела сообщения с каждым из друзей, не важно от 70ого другу или от друга 70ому. Теперь осталось их посчитать.
    
    
select to_user_id as fr_id from messages where 
from_user_id = 70 and to_user_id in 
	(select initiator_user_id from friend_requests fr1 where target_user_id = 70 and status='approved'
		union
	select target_user_id from friend_requests fr2 where initiator_user_id = 70 and status='approved') 
union
select from_user_id as fr_id from messages where 
to_user_id = 70 and from_user_id in 
	(select initiator_user_id from friend_requests fr1 where target_user_id = 70 and status='approved'
		union
	select target_user_id from friend_requests fr2 where initiator_user_id = 70 and status='approved')
order by fr_id limit 1; 
-- убрала текст сообщения из вывода и получилось, что просто выводятся друзья в порядке количества сообщений с 70ым. Ограничила список только первой строкой и получила финалиста. Бинго!
