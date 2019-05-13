# 176.第二高的薪水
-- 编写一个 SQL 查询，获取 Employee 表中第二高的薪水（Salary）
-- 如果不存在第二高的薪水，那么查询应返回 null

-- 把查询结果放入新表中，可以返回 null
SELECT
(SELECT DISTINCT Salary
FROM Employee
ORDER BY Salary DESC
LIMIT 1,1)
AS SecondHighestSalary;

-- 使用 IFNULL
SELECT
    IFNULL(
      (SELECT DISTINCT Salary
       FROM Employee
       ORDER BY Salary DESC
        LIMIT 1 OFFSET 1),
    NULL) AS SecondHighestSalary
