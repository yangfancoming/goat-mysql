﻿#

-- 实际SQL，查找用户名为Jefabc的员工
select * from emp where name = 'Jefabc';
-- 查看SQL是否使用索引，前面加上explain即可
explain select * from emp where name = 'Jefabc';

# expain出来的信息有10列，分别是id、select_type、table、type、possible_keys、key、key_len、ref、rows、Extra

-- # 概要描述：
-- # id:选择标识符
-- # select_type:表示查询的类型。
-- # table:输出结果集的表
-- # partitions:匹配的分区
-- # type:表示表的连接类型
-- # possible_keys:表示查询时，可能使用的索引
-- # key:表示实际使用的索引
-- # key_len:索引字段的长度
-- # ref:列与索引的比较
-- # rows:扫描出的行数(估算的行数)
-- # filtered:按表条件过滤的行百分比
-- # Extra:执行情况的描述和说明
--
-- # 其中 type  常用的类型有： ALL、index、range、 ref、eq_ref、const、system、NULL（从左到右，性能从差到好）
-- # airrecn   艾尔瑞康
-- # all   全表扫   index  命中索引但是回表   range  范围  ref 关联 eq ref 等位关联  const 不需要查表 直接返回  null   性能依次提高
--
-- # ALL：Full Table Scan， MySQL将遍历全表以找到匹配的行
-- #
-- # index: Full Index Scan，index与ALL区别为index类型只遍历索引树
-- #
-- # range:只检索给定范围的行，使用一个索引来选择行
-- #
-- # ref: 表示上述表的连接匹配条件，即哪些列或常量被用于查找索引列上的值
-- #
-- # eq_ref: 类似ref，区别就在使用的索引是唯一索引，对于每个索引键值，表中只有一条记录匹配，简单来说，就是多表连接中使用primary key或者 unique key作为关联条件
-- #
-- # const、system: 当MySQL对查询某部分进行优化，并转换为一个常量时，使用这些类型访问。如将主键置于where列表中，MySQL就能将该查询转换为一个常量，system是const类型的特例，当查询的表只有一行的情况下，使用system
-- #
-- # NULL: MySQL在优化过程中分解语句，执行时甚至不用访问表或索引，例如从一个索引列里选取最小值可以通过单独索引查找完成。