/**
  第14章 [使用子查询]
*/
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM orderitems;

SELECT * FROM products;
SELECT * FROM vendors;

SELECT * FROM productnotes;


# in查询相当于多个or条件的叠加，这个比较好理解
select * from vendors where vend_id in (1001, 1002, 1003);
SELECT * FROM vendors WHERE vend_id = 1001 OR vend_id = 1002 OR vend_id = 1003;

select * from vendors where vend_id not in (1001, 1002, 1003);
select * from vendors where vend_id != 1001 and vend_id != 1002 and vend_id != 1003;



#【14.2  利用子查询进行过滤】

# 列出订购物品TNT2的所有客户

# (1) 检索包含物品TNT2的所有订单的编号。
SELECT order_num FROM orderitems
WHERE prod_id = 'TNT2';
# (2) 检索具有前一步骤列出的订单编号的所有客户的ID。
SELECT cust_id FROM orders
WHERE order_num IN (SELECT order_num FROM orderitems WHERE prod_id = 'TNT2');
# (3) 检索前一步骤返回的所有客户ID的客户信息。
SELECT * FROM customers
WHERE cust_id IN (SELECT cust_id FROM orders WHERE order_num IN (SELECT order_num FROM orderitems WHERE prod_id = 'TNT2'));


#【14.3 作为计算字段使用子查询】

# 要显示customers表中每个客户的订单总数

SELECT cust_name,cust_state,cust_id FROM customers;

SELECT cust_name,cust_state,
       (SELECT count(*) FROM orders WHERE orders.cust_id = customers.cust_id) AS orders
FROM customers;





