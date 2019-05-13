# 175.组合两个表
-- 表1: Person，表2: Address：无论 person 是否有地址信息，都需要基于上述两表提供 person 的以下信息

-- 外部联结
SELECT FirstName, LastName, City, State
FROM Person LEFT JOIN Address
ON Person.PersonId = Address.PersonId
