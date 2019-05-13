# 596.超过5名学生的课
-- 有一个courses 表: student (学生) 和 class (课程)，请列出所有超过或等于5名学生选择该课程的课。

-- 注意同一个学生可能会重复选课，必须先剔除
SELECT class
FROM courses
GROUP BY class
HAVING COUNT(DISTINCT student) >= 5;
