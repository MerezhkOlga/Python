use shop;

drop table if exists logs;
create table logs (
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    tbl_name VARCHAR(50),
    primary_key_id bigint unsigned not null auto_increment PRIMARY KEY, -- Подумала, что serial не подойдет, т.к. id могут совпадать, если взяты из разных таблиц и автозаполнение нам не нужно
    name VARCHAR(255))
engine=Archive;
    
-- Что-то я урок смотрела и методичку читала, но способа удобнее, чем триггеры мне в голову не приходит...

-- вывела вот такую штуку... Она работает.
start transaction;
select @last_id := last_insert_id();
insert into logs (created_at, tbl_name, primary_key_id, name)
select created_at, 'users', id, name from users where id = @last_id;
commit;

-- Но когда я пытаюсь ее запихнеть в триггер, он выдает оштбку 1415. Not allowed to return a result set from a trigger

-- значит попытаюсь без транзакций...
delimiter //
drop trigger if exists copy_users//
create trigger copy_users after insert on users
for each row
	begin
	insert into logs (created_at, tbl_name, primary_key_id, name)
	select created_at, 'users', id, name from users where id = last_insert_id();
end//
delimiter ;

-- Оно почему-то записало один раз, а потом отказывается... я не понимаю, что ему не так.. #япыталась((

-- И еще попыталась найти ошибку, но все равно не вышло...
delimiter //
SET AUTOCOMMIT=1//
drop trigger if exists copy_users//
create trigger copy_users after insert on users
for each row
	begin
	start transaction;
	set @last_id := last_insert_id();
	insert into logs (created_at, tbl_name, primary_key_id, name)
	select created_at, 'users', id, name from users where id = @last_id;
end//
delimiter ;

