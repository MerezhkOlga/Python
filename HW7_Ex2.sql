use shop;
select * from products;
select * from catalogs;

-- Не уверена, что я правильно поняла, что от меня хотели в задании, сделала как поняла

SELECT
  products.*,
  catalogs.name
FROM catalogs JOIN products
WHERE catalogs.id = products.catalog_id;  

-- Думаю, что без полей catalog_id и дат будет красивее, тем более, что они сейчас не требуются, уберу их и переименую последний столбец

SELECT
  p.id,
  p.name,
  p.description,
  p.price,
  c.name category
FROM catalogs c JOIN products p
WHERE c.id = p.catalog_id;

