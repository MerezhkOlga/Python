CREATE DATABASE if not exists example;
USE example;

drop table if exists num;
CREATE TABLE num (
	id int);
insert into num values (1),(2),(3),(4),(5);

 SELECT * FROM num;
select exp(sum(ln(id))) from num;

-- подумала, погуглила (что греха тоить) и воспользовалась тем, что логарифм произведения равен сумме логарифмов. Посчитала, 
-- но не понимаю, почему ответ у меня не ровно 120, а 119,9999999997? Можно округлить, конкечно, но это странно...