
# 全局设置
    1. SQL语句不区分大小写，因此SELECT与select是相同的。  sql 中的 LIKE 'j%' 与 LIKE 'J%' 也是相同的
    2.SQL关键字使用大写，而对所有列和表名使用小写
    3.regexp 表达式不区分大小写 
          
# -- 下面是SELECT语句的逻辑执行顺序
    # FROM              仅在从表选择数据时使用
    # ON
    # JOIN
    # WHERE                      行级过滤
    # GROUP BY               仅在按组计算聚集时使用
    # WITH CUBE or WITH ROLLUP
    # HAVING                        组级过滤
    # SELECT                        要返回的列或表达式
    #   DISTINCT
    # ORDER BY              输出排序顺序
    #   TOP
    #  LIMIT                     要检索的行数