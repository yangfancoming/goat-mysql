﻿# 查询user表中，user_name字段值重复的数据及重复次数

select user_name,count(*) as count from user group by user_name having count>1;