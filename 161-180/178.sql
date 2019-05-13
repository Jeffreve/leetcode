# 178.分数排名
-- 如果两个分数相同，则两个分数排名（Rank）相同，名次之间不应该有“间隔”

SELECT Score, (SELECT count(DISTINCT score) FROM Scores WHERE score >= s.score) AS Rank
FROM Scores s
ORDER BY Score DESC ;
