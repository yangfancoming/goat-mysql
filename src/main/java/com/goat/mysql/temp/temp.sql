
/**
  vendors
vend_id 唯一的供应商ID
vend_name 供应商名
vend_address 供应商的地址
vend_city 供应商的城市
vend_state 供应商的州
vend_zip 供应商的邮政编码
vend_country 供应商的国家

*/
SELECT * FROM vendors;
/**
  prod_id 唯一的产品ID
vend_id 产品供应商ID（关联到vendors表中的vend_id）
prod_name 产品名
prod_price 产品价格
prod_desc 产品描述
*/
SELECT * FROM products;

/**
order_num 订单号（关联到orders表的order_num）
order_item 订单物品号（在某个订单中的顺序）
prod_id 产品ID（关联到products表的prod_id）
quantity 物品数量
item_price 物品价格
*/
SELECT * FROM orderitems;
/**
cust_id 唯一的顾客ID
cust_name 顾客名
cust_address 顾客的地址
cust_city 顾客的城市
cust_state 顾客的州
cust_zip 顾客的邮政编码
cust_country 顾客的国家
cust_contact 顾客的联系名
cust_email 顾客的联系email地址
*/
SELECT * FROM customers;
/**
order_num 唯一订单号
order_date 订单日期
cust_id 订 单 顾 客 ID （ 关 系 到 customers 表 的cust_id）
*/
SELECT * FROM orders;


































