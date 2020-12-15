create user shop_read;
create user shop;

grant usage, select on shop.* to 'shop_read';
grant all on shop.* to 'shop';
