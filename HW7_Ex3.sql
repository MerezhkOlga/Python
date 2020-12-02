use example;

drop table if exists flights;
create table flights (
	id serial primary key, 
    _from varchar(100), 
    _to varchar(100));
insert into flights (_from, _to) values 
	('moscow', 'omsk'),
    ('novgorod', 'kazan'),
    ('irkutsk', 'moscow'),
    ('omsk', 'irkutsk'),
    ('moscow', 'kazan');
    
drop table if exists cities;
create table cities (
	label varchar(100), 
    name varchar(100));    
insert into cities values
	('moscow','Москва'),
    ('irkutsk','Иркутск'),
    ('novgorod','Новгород'),
    ('kazan','Казань'),
    ('omsk','Омск');
    
select * from cities;
select * from flights;

select 
	id, 
    (select name from cities where label = _from) as 'from',
    (select name from cities where label = _to) as 'to'
from
	flights;