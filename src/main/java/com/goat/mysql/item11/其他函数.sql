
/**
  其他函数

*/

# 查看 当前使用/操作 哪个数据库
SELECT database();

# 查看当前数据库版本
SELECT version();

# 查看当前用户
SELECT user();

# 在mysql中，有if(id in (1,2,3),a,b) 判断id是否在1,2,3集合中，在则返回 a 不在则返回 b
# if函数  类比三目运算符
SELECT if(10 > 5, 'ok', 'no');
SELECT if(10 < 5, 'ok', 'no');

# CASE 1. 简单函数 类比 switch语句  CASE [col_name] WHEN [value1] THEN [result1]…ELSE [default] END   枚举这个字段(col_name)所有可能的值*
SELECT c.*,
       CASE c.cust_state
           WHEN 'MI' THEN '斧子'
           WHEN 'OH' THEN '大宝剑'
           WHEN 'IN' THEN '弩'
           ELSE '无'
           END
           AS '装备'
FROM customers c;

# CASE 2.搜索函数  类比 if else    CASE WHEN [expr] THEN [result1]…ELSE [default] END：搜索函数可以写判断，并且搜索函数只会返回第一个符合条件的值，其他case被忽略
SELECT * FROM orderitems;

SELECT o.*,
       CASE
           WHEN item_price > 20.00 THEN 'A'
           WHEN item_price > 10.00 THEN 'B'
           WHEN item_price > 5.00 THEN 'C'
           ELSE 'D'
           END
           AS '级别'
FROM orderitems o;