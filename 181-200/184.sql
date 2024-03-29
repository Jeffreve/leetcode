# 184.部门工资最高的员工
-- 找出每个部门工资最高的员工

select d.Name as Department, e.Name as Employee, e.Salary
from Department d inner join Employee e
on d.Id = e.DepartmentId
and e.Salary >= (select max(Salary) from Employee where DepartmentId = d.Id)
