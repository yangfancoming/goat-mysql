# 查看最大连接数
show variables like '%max_connections%';

# 设置最大连接数
set global max_connections=10;

# 显示当前正在执行的MySQL连接
# 如果是root帐号，你能看到所有用户的当前连接。如果是其它普通帐号，只能看到自己占用的连接。  show processlist;**只列出前100条，如果想全列出请使用show full processlist;**
 show processlist;


# 命令：show status like '%下面变量%';

# Opened_tables 已经打开的表的数量。 
# Questions 发往服务器的查询的数量。 
# Slow_queries 要花超过long_query_time时间的查询数量。
show status like '% Slow_queries%';

# Threads_connected 当前打开的连接的数量。
show status like '%Threads_connected%';

# Threads_running 不在睡眠的线程数量。 
# Uptime 服务器工作了多少秒。

show status like '%Threads_running%';

# Aborted_clients 由于客户没有正确关闭连接已经死掉，已经放弃的连接数量。

#  Aborted_connects 尝试已经失败的MySQL服务器的连接的次数。

#  Connections 试图连接MySQL服务器的次数。
show status like '%Connections %';

show status like 'Threads%';
# mysql> show status like 'Threads%';
# +-------------------+-------+
# | Variable_name     | Value |
# +-------------------+-------+
# | Threads_cached    | 1     |  当客户端断开之后，服务器处理此客户的线程将会缓存起来以响应下一个客户而不是销毁(前提是缓存数未达上限)
# | Threads_connected | 1     |  当前的连接数
# | Threads_created   | 23    |  Threads_created表示创建过的线程数
# | Threads_running   | 2     |  当前激活的线程连接数
# +-------------------+-------+

# 全局查看wait_timeout值  其意思为mysql的一个connection空闲时间超过8小时，mysql会自动断开该连接
show global variables like'%wait_timeout%' ;
set global wait_timeout = 10;
# 进入myslq 控制台
docker exec -it mysql2 /bin/bash
mysql -uroot -p12345

