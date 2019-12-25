

/**
笛卡尔乘积现象：表1有m行，表2有n行，结果=m*n行
  笛卡尔乘积公式 : A表中数据条数   *  B表中数据条数  = 笛卡尔乘积.
*/

SELECT * FROM beauty;
SELECT * FROM boys;
# 产生原因：没有有效的连接条件
SELECT NAME, boyName FROM boys,beauty;

# 如何避免：添加有效的连接条件
SELECT * FROM boys,beauty
WHERE beauty.boyfriend_id = boys.id;
