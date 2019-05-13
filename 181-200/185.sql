# 185.部门工资前三高的员工
-- 找出每个部门工资前三高的员工

-- count (salary>e.salary) < 3
select d.name as Department,e.name as Employee,e.salary as Salary
from employee as e inner join department as d
on e.DepartmentId=d.id
where (select count( distinct salary) from employee where salary>e.salary and departmentid=e.DepartmentId )<3
order by e.departmentid,Salary desc
