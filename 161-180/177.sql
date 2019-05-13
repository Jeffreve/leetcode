# 177.第 N 高的薪水
-- 编写一个 SQL 查询，获取 Employee 表中第 n 高的薪水（Salary）。
-- 例如上述 Employee 表，n = 2 时，应返回第二高的薪水 200。如果不存在第 n 高的薪水，那么查询应返回 null。

-- 过程实现
DELIMITER //

CREATE PROCEDURE t1(
    IN n INT
)
BEGIN
    set n = n-1;
    SELECT DISTINCT salary FROM employee ORDER BY salary DESC LIMIT n, 1;
END //

DELIMITER ;


-- 函数实现，题目要求
DELIMITER //

CREATE FUNCTION test2(N INT) RETURNS INT
BEGIN
    SET N = N - 1;
    RETURN (
     SELECT DISTINCT salary FROM employee ORDER BY salary DESC LIMIT N, 1
    );
END//

DELIMITER ;
