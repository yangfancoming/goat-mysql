/**
  * 第8章 [用通配符进行过滤](script/08-using-wildcard-filtering.sql)
  为在搜索子句中使用通配符，必须使用LIKE操作符。 LIKE指示MySQL，后跟的搜索模式利用通配符匹配而不是直接相等匹配进行比较。

*/
SELECT *
FROM products;

--  % 匹配任意长度的字符 甚至包括零字符（没有字符）

-- # 查找所有以’b’字母开头的记录：
SELECT *
FROM products
WHERE prod_name LIKE 'j%';

-- # 查询 prod_name 中包含字母’g’的记录：
SELECT *
FROM products
WHERE prod_name LIKE '%e%';

-- # 查询以 's'开头，并以'g'结尾的记录
SELECT *
FROM products
WHERE prod_name LIKE 's%g';


--  _ 匹配单个的字符 甚至包括零字符
SELECT *
FROM products
WHERE prod_id LIKE 'f_'; -- like 查询   以f开头并且只有两位长度  所有记录
SELECT *
FROM products
WHERE prod_id LIKE 'f__';
-- like 查询  以f开头并且只有三位长度  所有记录

-- #   如果要真的去查询username字段中含有 % _ 的字符串，需要使他们不再作为通配符
-- #   将% _ 在like中转义，拿_为例，
-- #   转义前：select * from user where username like '_nihao',
-- #   转义后：select * from user where username like '/_nihao' escape '/', 意思就是说/之后的_不作为通配符

-- # 获取 t_batch 表的 format字段中 所有不带 % 的记录  escape '/' sos 意思是 / 后的% 不作为查询用的通配符，而第1、3个% 还是作为查询通配符
SELECT format
FROM t_batch
WHERE delete_state = 0
  AND format NOT LIKE '%/%%' ESCAPE '/';














