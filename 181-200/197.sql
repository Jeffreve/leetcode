# 197.上升的温度
-- 给定一个 Weather 表，编写一个 SQL 查询，来查找与之前（昨天的）日期相比温度更高的所有日期的 Id。

-- w1是日期较大、且温度较高的一天
select w1.Id from weather w1 ,weather w2
where to_days(w1.recorddate)=to_days(w2.recorddate)+1 and w1.temperature > w2.temperature
