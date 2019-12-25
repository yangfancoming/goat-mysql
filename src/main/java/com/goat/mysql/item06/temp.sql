/**
  * 第6章 [过滤数据](script/06-filtering-data.sql)


*/
SELECT *
FROM products;

-- 关系运算 =、>、>=、< 、<=、  !=(<>)  BETWEEN   NULL  NOT

SELECT *
FROM products
WHERE prod_price = 2.50;

SELECT *
FROM products
WHERE prod_price > 2.50;
# != 与 <> 没有区别  只是版本是否支持问题
SELECT *
FROM products
WHERE prod_name != 'Safe';
SELECT *
FROM products
WHERE prod_name <> 'Safe';

-- BETWEEN AND 范围查询为闭区间   即： 5.99 <=SAL<= 10.00
SELECT prod_name, prod_price
FROM products
WHERE prod_price BETWEEN 5.99 AND 10.00;

-- NOT BETWEEN AND 范围查询为开区间   即： SAL<5.99  AND SAL>10.00
SELECT prod_name, prod_price
FROM products
WHERE prod_price NOT BETWEEN 5.99 AND 10.00;


SELECT *
FROM customers
WHERE cust_email IS NULL;

SELECT *
FROM customers
WHERE cust_email IS NOT NULL;




























