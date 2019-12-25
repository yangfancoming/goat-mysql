
/**
  第5章 [排序检索数据](script/05-sorting-retrieved-data.sql)

  关系数据库设计理论认为，如果不明确规定排序顺序，则不应该假定检索出的数据的顺序有意义



*/
select * from products;
select prod_name from products;

-- 默认升序(ASC)排列 1234...   DESC 为降序排列 54321...
select prod_name from products order by prod_name;
select prod_name from products order by prod_name desc ;

--  对查询返回的结果集  先按照 prod_price 进行排序，再按照 prod_name 进行排序 （只有在 prod_price 字段中有相等的值 prod_name 排序才会生效）
select prod_price, prod_name from products order by prod_price, prod_name;

# 找出 最贵的商品
select * from products order by prod_price desc limit 1;
select max(prod_price) from products ;


































