DELIMITER //

drop trigger if exists stooop//
create trigger stooop before insert on products
	for each row
	begin
        declare a varchar(225);
        declare b TEXT;
        select name, description into a, b from products;
        if a is null and b is null then 
			signal sqlstate '45000' set message_text = 'INSERT canceled';
		end if;
	end//


select * from products//    

-- А дальше когда я пытаюсь записать что угодно в таблицу, он выдает мне ошибку 1172 "Result consisted of more than one row", не понимаю, что не так, я сдаюсь((

insert into products 
(name, description, price, catalog_id) 
values 
('MSI B250M GAMING PRO', 'Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', 5060.00, 2)//
-- ('Какая-то ерунда', 'Работает так-то покупайте быстро', 1000.00, 2)//

INSERT INTO shop.products
  (name, description, price, catalog_id)
VALUES
('Intel Core i3-8100', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 7890.00, 1)//

INSERT INTO shop.products
  (name, description, price, catalog_id)
VALUES
('Какая-то ерунда', 'Работает так-то покупайте быстро', 1000.00, 2),
('Intel Core i3-8100', NULL, 8990.00, 2),
(NULL, NULL, 7990.00, 1)//


-- Или может так?... 
create trigger stooop before insert on products
	for each row
	begin
        if (name is null) and (description is null) then 
			signal sqlstate '45000' set message_text = 'INSERT canceled';
		end if;
	end//
-- Теперь при попытке записи выдает ошибку 1054... ничего не понимаю...