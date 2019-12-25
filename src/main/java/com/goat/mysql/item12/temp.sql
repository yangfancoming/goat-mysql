/**

 第12章 [汇总数据/分组函数]
  分组函数 都将 忽略 null 值

*/

# GROUP BY关键字通常与集合函数一起使用。集合函数包括COUNT()函数、SUM()函数、AVG()函数、MAX()函数和MIN()函数等。
# COUNT()函数：用于统计记录的条数。
# SUM()函数：用于计算字段的值的总和。
# AVG()函数：用于计算字段的值的平均值。
# MAX()函数：用于查询字段的最大值。
# MIN()函数：用于查询字段的最小值。

SELECT * FROM products;
# 返回表中的总行数
SELECT count(*) FROM products;

SELECT * FROM customers;
# 返回表中 指定列下的总行数，计算时将忽略空值的行
SELECT count(cust_email) FROM customers;

# 返回表中 指定列的值的总和
SELECT sum(prod_price) FROM products;

# 返回表中 指定列的值的  最大的那条记录
SELECT max(prod_price) FROM products;


# 使用了DISTINCT参数，因此平均值 是先去重后  再计算的平均值
SELECT  avg(DISTINCT prod_price) as avg_price FROM products WHERE vend_id = 1003;




