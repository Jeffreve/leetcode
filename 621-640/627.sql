# 627.交换工资(交换性别)
-- 给定一个 salary 表，如下所示，有 m = 男性 和 f = 女性 的值。交换所有的 f 和 m 值（例如，将所有 f 值更改为 m，反之亦然）

UPDATE salary
SET
    sex = CASE sex
        WHEN 'm' THEN 'f' ELSE 'm'
    END;
