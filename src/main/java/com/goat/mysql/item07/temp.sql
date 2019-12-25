/**
  * 第7章 [数据过滤](script/07-advanced-data-filtering.sql)
*/
SELECT *
FROM products;

# 由于计算次序  出现的问题  原因： SQL（像多数语言一样）在处理OR操作符前，优先处理AND操作符
# 当SQL看到下面这个WHERE子句时，它理解为 （ vend_id = 1002 ） or （vend_id = 1003 and prod_price >= 10）
SELECT prod_name, prod_price, vend_id
FROM products
WHERE vend_id = 1002
   OR vend_id = 1003 AND prod_price >= 10;

# 解决方式：
SELECT prod_name, prod_price, vend_id
FROM products
WHERE (vend_id = 1002 OR vend_id = 1003)
  AND prod_price >= 10;


# 两者是等价的
SELECT *
FROM products
WHERE vend_id IN (1002, 1003);
SELECT *
FROM products
WHERE vend_id = 1002
   OR vend_id = 1003;

# NOT WHERE子句中用来否定后跟条件的关键字。
SELECT *
FROM products
WHERE vend_id NOT IN (1002, 1003);


-- 指定范围的查询：IN操作符
SELECT *
FROM products
WHERE vend_id IS NULL;
# 在 in 操作符中 有null 不影响查询结果 (不会查询出有null的记录，即写null和不写null 都是一样的)
SELECT *
FROM products
WHERE vend_id IN (1002, 1003, NULL);
SELECT *
FROM products
WHERE vend_id IN (1002, 1003);
# 在 not in 操作符中 有null 那么无结果返回  IN 操作无此限制
SELECT *
FROM products
WHERE vend_id NOT IN (1002, 1003);
SELECT *
FROM products
WHERE vend_id NOT IN (1002, 1003, NULL);

















