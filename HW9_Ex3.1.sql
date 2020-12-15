DELIMITER //

drop procedure if exists hello//
create procedure hello()
begin
set @time = date_format(now(), '%H');	
	case 
		when @time in (06,11) then select 'Доброе утро';
		when @time in (12,17) then select 'Добрый день' ;
		when @time in (18,23) then select 'Добрый вечер';
		when @time in (00,05) then select 'Доброй ночи' ;
		else select 'Что-то пошло не так. Либо временная дыра, либо ошибка в написании процедуры. Смотрите "Интерстеллар" или читайте документацию.';
    end case;
end//

DELIMITER ;
call hello();

-- А вот на этом моменте я поняла, что от меня хотели функцию, а не процедуру...
-- Почувствовала себя дурой.
-- Пожалела о потраченном времени.
-- Решила процедуру не удалять. 
-- Функция сейчас будет ниже...

DELIMITER //

drop function if exists hello//
create function hello()
returns varchar(15) deterministic
begin	
	case 
		when date_format(now(), '%H') in (06,11) then return 'Доброе утро';
		when date_format(now(), '%H') in (12,17) then return 'Добрый день' ;
		when date_format(now(), '%H') in (18,23) then return 'Добрый вечер';
		when date_format(now(), '%H') in (00,05) then return 'Доброй ночи' ;
    end case;
end//

DELIMITER ;
select hello();
-- Вроде, работает! хотя обернуть date_format(now(), '%H') в переменную как в случае с процедурой он почему-то не хочет...