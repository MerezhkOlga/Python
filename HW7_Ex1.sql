use shop;
select * from orders;
select * from users; -- Посмотрела что как в табличках...

insert into orders (user_id) values (1), (3), (3), (5), (2), (1); -- Заполню таблицу заказов пользователями, чтобы было, с чем работать.

select user_id from orders group by user_id; -- Посмотрела список id всех, кто делал заказы.

select * from users where id in (select user_id from orders group by user_id); -- Использовала  это как вложенный запрос для вывода пользователей. 
