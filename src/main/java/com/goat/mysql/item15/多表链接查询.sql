

/**
#多表连接查询语法(重点)
SELECT 字段列表
    FROM 表1  INNER|LEFT|RIGHT JOIN  表2
ON 表1.字段 = 表2.字段;
*/


SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM orderitems;

SELECT * FROM products;
SELECT * FROM vendors;

SELECT * FROM productnotes;

# 多表联合查询
# 14 条记录
SELECT * FROM products p ,vendors v WHERE p.vend_id = v.vend_id;


# 1 内连接查询 (只显示符合条件的数据)
# 14 条记录  效果: 大家可能会发现, 内连接查询与多表联合查询的效果是一样的.
SELECT * FROM products p INNER JOIN vendors v ON p.vend_id = v.vend_id;

# 2 左外连接查询 (左边表中的数据优先全部显示)
# 15 条记录 GOAT记录 　效果:products表中的数据全部都显示,而 vendors表中的数据符合条件的才会显示,不符合条件的会以 null 进行填充.
SELECT * FROM products p LEFT JOIN vendors v ON p.vend_id = v.vend_id;

# 3 右外连接查询 (右边表中的数据优先全部显示)
# 效果:正好与[左外连接相反]
SELECT * FROM products p RIGHT JOIN vendors v ON p.vend_id = v.vend_id;


# 4 全连接查询(显示左右表中全部数据)  UNION 全连接查询：是在内连接的基础上增加 左右两边没有显示的数据



















