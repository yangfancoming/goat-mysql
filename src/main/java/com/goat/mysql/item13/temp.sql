

/**
  第13章 [分组数据]
    查询列表比较特殊： 要求必须是分组函数或是 group by后 出现的字段

*/
select * from products;



# 按照 vend_id 分组 并显示每个供应商的产品的个数
select vend_id,COUNT(*) as num_prods from products group by vend_id;
# 按照 vend_id 分组 并显示每个供应商的产品的总价格
select vend_id,sum(prod_price) as num_prods from products group by vend_id;

# 事实上，目前为止所学过的所有类型的WHERE子句都可以用HAVING来替代。
# 唯一的差别是WHERE过滤行，而HAVING过滤分组
select * from products having vend_id >1003;

# 【分组前过滤】  where
select vend_id,COUNT(*) as num_prods from products WHERE vend_id != 1002 group by vend_id;

# 【分组后过滤】  having
select cust_id, count(*) as orders from orders group by cust_id;
select cust_id, count(*) as orders from orders group by cust_id having count(*) >= 2;

select vend_id as num_prods from products where prod_price>10;
select vend_id, count(*) as num_prods from products where prod_price>10 group by vend_id ;
select vend_id, count(*) as num_prods from products where prod_price>10 group by vend_id having count(*) >= 2;
select vend_id, count(*) as num_prods from products  group by vend_id having count(*) >= 2;

select * from orderitems;
# 【分组和排序】

select order_num,sum(quantity*item_price) as ordertotal
from orderitems
group by order_num;

# 检索总计订单价格大于等于50的订单的订单号和总计订单价格
select order_num,sum(quantity*item_price) as ordertotal
from orderitems
group by order_num
having sum(quantity*item_price)>=50;

# 用 ORDER BY 子句排序输出
select order_num,sum(quantity*item_price) as ordertotal
from orderitems
group by order_num
having sum(quantity*item_price)>=50
order by ordertotal;






