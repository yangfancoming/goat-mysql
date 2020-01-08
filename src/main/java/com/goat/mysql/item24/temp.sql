/**

  第24章 [使用游标]

*/


create procedure p1()
begin
    declare cust_id int;
    declare cust_name varchar(15);
    -- 声明游标
    declare mc cursor for select * from customers;
    -- 打开游标
    open mc;
    -- 获取结果
    fetch mc into cust_id,cust_name;
    -- 这里是为了显示获取结果
    select cust_id,cust_name;
    -- 关闭游标
    close mc;
end;


# doit  Incorrect number of FETCH variables  为啥报错？？
CALL p1();
