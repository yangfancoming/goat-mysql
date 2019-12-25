

# 【11.2.2 日期和时间处理函数】

/**
AddDate()   增加一个日期（天、周等）
AddTime()   增加一个时间（时、分等）


DateDiff()  计算两个日期之差
Date_Add()   高度灵活的日期运算函数
Date_Format() 返回一个格式化的日期或时间串

Day()       返回一个日期的天数部分
DayOfWeek() 对于一个日期，返回对应的星期几(周六是第一天)

Date()      返回日期时间的日期部分
Year()  从日期字段中返回年份
Month() 从日期字段中返回月份

Now()    返回当前日期和时间
CurDate()   返回当前日期
CurTime()   返回当前时间

Second() 返回一个时间的秒部分
Hour()      返回一个时间的小时部分
Minute()    返回一个时间的分钟部分
Time()   返回一个日期时间的时间部分

STR_TO_DATE(str,format)函数 是将时间格式的字符串（str），按照所提供的显示格式（format）转换为DATETIME类型的值。
DATE_FORMAT(date,format)函数 则是把数据库的日期转换为对应的字符串格式
*/

# 首先需要注意的是MySQL使用的日期格式。无论你什么时候指定一个日期，
# 不管是插入或更新表值还是用WHERE子句进行过滤，日期必须为格式yyyy-mm-dd。

SELECT * FROM orders;
SELECT * FROM orders WHERE order_date = '2005-09-01'; # ok 因为 后面的时分秒为 00:00:00
SELECT * FROM orders WHERE order_date = '2005-10-08'; # no 因为 后面的时分秒为 11:00:00
# Date(order_date)指示MySQL仅提取列的日期部分，更可靠的SELECT语句为
SELECT * FROM orders WHERE date(order_date) = '2005-10-08'; # ok

# 检索出2005年9月的所有订单
SELECT * FROM orders WHERE date(order_date) BETWEEN '2005-09-01' AND '2005-09-30';
SELECT * FROM orders WHERE YEAR(order_date) = '2005' AND MONTH(order_date) = '09';

# Now()    返回当前日期和时间
select now();
select YEAR('2019-01-25');
select YEAR('2019/01/25');

select *, Day(order_date) FROM orders;
select *, MONTH(order_date) FROM orders;
select *, MONTHNAME(order_date) FROM orders;
select *, YEAR(order_date) FROM orders;
select *, YEARWEEK(order_date) FROM orders;

select now();
select CurDate();
select CurTime();

# Second() 返回一个时间的秒部分
select Second(now());
select *, Second(order_date) FROM orders;
select *, Hour(order_date) FROM orders;
select *, Minute(order_date) FROM orders;
select *, Time(order_date) FROM orders;
select *, Day(order_date) FROM orders;
select *, DayOfWeek(order_date) FROM orders;

# STR_TO_DATE(str,format)函数 是将时间格式的字符串（str），按照所提供的显示格式（format）转换为DATETIME类型的值。
SELECT STR_TO_DATE('2017-01-06 10:20:30','%Y-%m-%d %H:%i:%s') AS result;

# DATE_FORMAT(date,format)函数 则是把数据库的日期转换为对应的字符串格式
SELECT DATE_FORMAT('2017-01-06 10:20:30','%Y-%m-%d') AS result2;















































