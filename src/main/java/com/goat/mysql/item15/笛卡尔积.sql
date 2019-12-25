

/**
笛卡尔乘积现象：表1 有m行，表2有n行，结果=m*n行
*/

SELECT * FROM beauty;
SELECT * FROM boys;
# 发生原因：没有有效的连接条件
SELECT NAME, boyName FROM boys,beauty;

# 如何避免：添加有效的连接条件
SELECT NAME, boyName FROM boys,beauty
WHERE beauty.boyfriend_id = boys.id;
