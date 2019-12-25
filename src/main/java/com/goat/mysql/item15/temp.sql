/**
  第15章 连结表
WHERE子句作为过滤条件，它只包含那些匹配给定条件（这里是联结条件）的行。
没有WHERE子句，第一个表中的每个行将与第二个表中的每个行配对，而不管它们逻辑上是否可以配在一起。

*/
SELECT * FROM vendors;
SELECT * FROM products;

# 【15.2 创建联结】
SELECT v.vend_name,p.prod_name,p.prod_price
FROM vendors v, products p
WHERE v.vend_id = p.vend_id
ORDER BY vend_name,prod_name;
/**
    笛卡儿积（cartesian product） 由没有联结条件的表关系返回的结果为笛卡儿积。
    检索出的行的数目将是第一个表中的行数乘以第二个表中的行数。
  vendors = 6 条记录
  products = 14 条记录
*/
SELECT 6*14;

SELECT v.vend_name,p.prod_name,p.prod_price
FROM vendors v, products p;

# 【15.2.2 内部联结】

SELECT v.vend_name,p.prod_name,p.prod_price
FROM vendors v INNER JOIN products p ON v.vend_id = p.vend_id;



# 【15.2.3 联结多个表】
# 显示编号为20005的订单中的物品
SELECT * FROM orderitems o,products p,vendors v
WHERE p.vend_id = v.vend_id
AND o.prod_id = p.prod_id
AND order_num = 20005;



































