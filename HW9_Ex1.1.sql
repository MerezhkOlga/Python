use shop;
select * from users;
use sample;
select* from users;

start transaction;
	insert into sample.users
		select * from shop.users 
		where id = 1;
	delete from shop.users
		where id = 1;
commit;

use shop;
select * from users;
use sample;
select* from users;