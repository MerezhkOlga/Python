CREATE DATABASE if not exists example;
USE example;

drop table if exists storehouses_products;
CREATE TABLE storehouses_products (
	value int);
insert into storehouses_products values (4),(10),(7),(8),(0),(0),(3),(5);

insert into storehouses_products
select * from storehouses_products order by value, value limit 2,8;

insert into storehouses_products
select * from storehouses_products where value = 0;

delete from storehouses_products limit 8;

select * from storehouses_products;

-- сидела более полутора часов с этим заданием, знаю, что топорно, но оно наконец работает!! очень хочу увидеть нормальный вариант)

