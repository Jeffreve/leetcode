# 196.删除重复的电子邮箱
-- 编写一个 SQL 查询，来删除 Person 表中所有重复的电子邮箱，重复的邮箱里只保留 Id 最小 的那个。

-- 循环 p1、p2，删除较大的那个
delete p1 from Person p1 ,Person p2
where p1.Email =p2.Email and p1.Id > p2.Id
