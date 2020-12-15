use shop;

select p.name, c.name 
from products p join catalogs c 
on p.catalog_id = c.id; -- Сделала сам вывод

create view names (name, ccatalog) as 
select p.name, c.name 
from products p join catalogs c 
on p.catalog_id = c.id; -- Обернула его в представление

select * from names; -- Проверила