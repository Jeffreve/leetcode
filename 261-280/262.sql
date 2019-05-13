# 262.行程和用户
-- 写一段 SQL 语句查出 2013年10月1日 至 2013年10月3日 期间非禁止用户的取消率

-- inner join Users dri on dri.Users_Id = t.Driver_Id and dri.Role = 'driver' and dri.Banned = 'No'
select
t.Request_at as Day,
ROUND(count(t.Status <> 'completed' or null) / count(1), 2)  as 'Cancellation Rate'
from Trips t
inner join Users cli on cli.Users_Id = t.Client_Id and cli.Role = 'client' and cli.Banned = 'No'
where t.Request_at >= '2013-10-01'
and t.Request_at <= '2013-10-03'
group by t.Request_at
