# 181.超过经理收入的员工
-- Employee 表包含所有员工，他们的经理也属于员工。每个员工都有一个 Id，此外还有一列对应员工的经理的 Id。
-- 查询可以获取收入超过他们经理的员工的姓名

SELECT e1.Name AS Employee
FROM Employee AS e1 ,Employee AS e2
WHERE e1.ManagerId=e2.Id AND e1.Salary>e2.Salary
