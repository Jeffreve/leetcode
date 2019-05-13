# 601.体育馆的人流量
-- X 市建了一个新的体育馆，每日人流量信息被记录在这三列信息中：序号 (id)、日期 (date)、 人流量 (people)。
-- 请编写一个查询语句，找出高峰期时段，要求连续三天及以上，并且每天人流量均不少于100。

-- from 多个表时，使用distinct剔除重复
-- 筛选 abc、bac、bca，保证 a 处于三种位置即可
select distinct a.* from stadium AS a,stadium AS b,stadium AS c
where a.people>=100 and b.people>=100 and c.people>=100
and (
     (a.id = b.id-1 and b.id = c.id -1) or
     (b.id = a.id-1 and a.id = c.id -1) or
     (b.id = c.id-1 and c.id = a.id -1)
) order by a.id;
