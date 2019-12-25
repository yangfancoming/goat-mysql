
-- 查询所有字段  不建议使用*  因为：1、降低查询效率(通配符* 在执行前 需要编译)2、可读性差
select * from products;
# 单列查询
select prod_name from products;
# 多列查询
select prod_id,vend_id,prod_name,prod_price,prod_desc from products;

/**
  distinct 去重
  如果使用 DISTINCT 关键字，它必须直接放在列名的前面
*/
select vend_id from products;
select distinct vend_id from products;
select distinct vend_id,prod_price from products;


SELECT * FROM products;

--  LIMIT 限制 查询结果数量
SELECT * FROM products LIMIT  4;-- 在查询结果集中  返回 前4条数据
SELECT * FROM products LIMIT  3,5; -- 在查询结果集中  返回 第4条 至 第6条 的数据  (索引从0开始)



































