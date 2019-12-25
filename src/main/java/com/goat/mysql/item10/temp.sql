/**

   第10章 [创建计算字段]
MySQL支持表10-1中列出的基本算术操作符： +   -   *  /

*/
SELECT *
FROM products;


# 【执行算术计算】

SELECT 2+3;
SELECT 2-3;
SELECT 2*3;
SELECT 6/2;


# 检索订单号为 20005 的所有物品明细
SELECT prod_id, quantity, item_price
FROM orderitems
WHERE order_num = 20005;

# 汇总物品的价格（单价乘以订购数量）：
SELECT prod_id, quantity, item_price,quantity*item_price AS expanded_price
FROM orderitems
WHERE order_num = 20005;


# 再+运算符中 如果遇到字符型 则 尝试将其转成数值型后进行运算  如果转换失败则转成0
SELECT '2'+3; # 5
SELECT 'a'+3; # 3
# 如果遇到 null 类型则 计算结果必定为null
SELECT cust_email,cust_email+'3' FROM customers ;

# 【拼接字段】

SELECT concat('1','b','3') AS haha;

SELECT * FROM vendors;
SELECT CONCAT(vend_name,'(',vend_country,')') FROM vendors;