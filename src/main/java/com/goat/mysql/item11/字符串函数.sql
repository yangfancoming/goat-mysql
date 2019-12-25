/**

 第11章 使用数据处理函数

  用于处理文本串（如删除或填充值，转换值为大写或小写）的文本函数。
  用于在数值数据上进行算术操作（如返回绝对值，进行代数运算）的数值函数。
  用于处理日期和时间值并从这些值中提取特定成分（例如，返回两个日期之差，检查日期有效性等）的日期和时间函数。
  用于返回DBMS正使用的特殊信息（如返回用户登录信息，检查版本细节）的系统函数。

# Upper()函数 将文本转换为大写
# Lower() 将串转换为小写
# Length() 返回串的长度 (所占字节数)
# concat() 字符串拼接函数

# Left() 返回串左边的字符
# Right() 返回串右边的字符
# Locate() 找出串的一个子串

# Soundex() 返回串的SOUNDEX值
# SubString() 返回子串的字符
# substr()  截取字符串
# FIND_IN_SET(str,strlist)
# INSTR(STR,SUBSTR)
# trim()  去掉字符串中的 前和后 的空格  （字符串中间的空格不会去除）
# LTrim() 去掉串左边的空格
# RTrim() 去掉串右边的空格
# LPAD(str,10,'0') 用指定的字符 左填充指定字符串 指定填充后的总长度
# RPAD(str,10,'0') 用指定的字符 右填充指定字符串 指定填充后的总长度
# replace(str,10,'0') P1 参数  P2 待替换的内容 P3替换成的内容
*/

SELECT * FROM customers;

# 【11.2.1 文本处理函数】

# Upper()函数 将文本转换为大写
SELECT vend_name,upper(vend_name),lower(vend_name) FROM vendors;
# concat() 字符串拼接函数
SELECT concat(cust_zip,'---',cust_state) FROM customers;
# Length() 返回串的长度 (所占字节数)
SELECT length('123');

# 类比java  从第四位开始截取(包括4)到最后 索引从1开始
SELECT SUBSTR('123456',4);
# 从2位开始截取  截取长度为3
SELECT SUBSTR('123456',2,3);

SELECT LENGTH('123');
SELECT LENGTH(' 1 2 3 ');
SELECT LENGTH(TRIM(' 1 2 3 '));
SELECT LENGTH(LTRIM(' 123 '));
SELECT LENGTH(RTRIM(' 123 '));

SELECT LPAD('123456',8,'0'); # 00123456
SELECT RPAD('123456',8,'0'); # 12345600

SELECT REPLACE('123456','5','0'); # 123406
SELECT REPLACE('123456',5,'0'); # 123406

/**
customers表中有一个顾客Coyote Inc. 其联系名为Y.Lee
但如果这是输入错误，此联系名实际应该是Y.Lie，怎么办？显然，按正确的联系名搜索不会返回数据，
在这个例子中， WHERE子句使用Soundex()函数来转换cust_contact列值和搜索串为它们的SOUNDEX值。
因为Y.Lee和Y.Lie发音相似，所以它们的SOUNDEX值匹配，因此WHERE子句正确地过滤出了所需的数据
*/
SELECT cust_name,cust_contact FROM customers ;
SELECT cust_name,cust_contact FROM customers WHERE cust_contact = 'Y Lee';
SELECT cust_name,cust_contact FROM customers WHERE cust_contact = 'Y lie';
SELECT cust_name,cust_contact FROM customers WHERE SOUNDEX(cust_contact) = SOUNDEX('Y lie');


/**
INSTR(STR,SUBSTR) 在一个字符串(STR)中搜索指定的字符(SUBSTR),返回发现指定的字符的位置(INDEX);
STR 被搜索的字符串
SUBSTR 希望搜索的字符串
结论：在字符串STR里面,字符串SUBSTR出现的第一个位置(INDEX)，INDEX是从1开始计算，如果没有找到就直接返回0，没有返回负数的情况。
*/
SELECT INSTR('abcd','b');
SELECT INSTR('abcd','f');

# FIND_IN_SET 函数
# 语法：FIND_IN_SET(str,strlist)
# 定义：
# 1. 假如字符串str在由N子链组成的字符串列表strlist中，则返回值的范围在1到N之间。
# 2. 一个字符串列表就是一个由一些被‘,’符号分开的自链组成的字符串。
# 3. 如果第一个参数是一个常数字符串，而第二个是typeSET列，则FIND_IN_SET()函数被优化，使用比特计算。
# 4. 如果str不在strlist或strlist为空字符串，则返回值为0。
# 5. 如任意一个参数为NULL，则返回值为NULL。这个函数在第一个参数包含一个逗号(‘,’)时将无法正常运行。
# strlist：一个由英文逗号“,”链接的字符串，例如："a,b,c,d"，该字符串形式上类似于SET类型的值被逗号给链接起来。
# 示例：SELECT FIND_IN_SET('b','a,b,c,d'); //返回值为2，即第2个值

select * from t_inout_storage_detail where FIND_IN_SET('dtds03',all_code);
select id from t_inout_storage_detail where FIND_IN_SET('dtds03',all_code);




