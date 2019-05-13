# 182. 查找重复的电子邮箱
-- 编写一个 SQL 查询，查找 Person 表中所有重复的电子邮箱。

SELECT Email
FROM Person
group by Email
HAVING COUNT(*) >=2;
