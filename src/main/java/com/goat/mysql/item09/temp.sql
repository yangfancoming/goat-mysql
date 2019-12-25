/**
  * 第9章 [用正则表达式进行搜索]
  MySQL仅支持多数正则表达式实现的一个很小的子集

*/
SELECT *
FROM products;


#【基本字符匹配】
# 检索列prod_name包含文本 1000 的所有记录
SELECT prod_name
FROM products
WHERE prod_name REGEXP '1000';
# 检索列prod_name包含文本 000 的所有记录
SELECT prod_name
FROM products
WHERE prod_name REGEXP '000';
# '.' 它表示匹配任意一个字符
SELECT prod_name
FROM products
WHERE prod_name REGEXP '.00';


# lie 与 regexp 的差别： like只匹配字段而regexp匹配字段的内容
# 如果要regexp匹配字段 需要借助 ^和$定位符（ anchor）
SELECT prod_name
FROM products
WHERE prod_name REGEXP '1000';

SELECT prod_name
FROM products
WHERE prod_name LIKE '1000';

#  【进行OR匹配】
#   |为正则表达式的OR操作符。它表示匹配其中之一  功能上类似于在SELECT语句中使用OR语句
SELECT prod_name
FROM products
WHERE prod_name REGEXP '1000|2000|3000';

#  【匹配几个字符之一】
# MySQL假定你的意思是'1'或'2'或'3 ton' 除非把字符|括在一个集合中，否则它将应用于整个串。
SELECT prod_name
FROM products
WHERE prod_name REGEXP '1|2|3 Ton';

# [123]定义一组字符，它的意思是匹配1或2或3，因此， 1 ton和2 ton都匹配且返回
SELECT prod_name
FROM products
WHERE prod_name REGEXP '[123] Ton';


#  【匹配范围】
#[0123456789] == [0-9] 为简化这种类型的集合，可使用-来定义一个范围。
SELECT prod_name
FROM products
WHERE prod_name REGEXP '[1-5] Ton';

#  【匹配特殊字符】















