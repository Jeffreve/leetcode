# 626.换座位
-- 一张 seat 座位表，平时用来储存学生名字和与他们相对应的座位 id。
-- 其中纵列的 id 是连续递增的，想改变相邻俩学生的座位。

-- 这里改变的是ID，name顺序未变，通过ID重新排序
SELECT (CASE
            WHEN MOD(id,2) = 1 AND id = (SELECT COUNT(*) FROM seat) THEN id
            WHEN MOD(id,2) = 1 THEN id+1
            ElSE id-1
        END) AS id, student
FROM seat
ORDER BY id;
