SELECT distinct a.num AS ConsecutiveNums
FROM Logs a
JOIN Logs b ON a.id=b.id+1
JOIN Logs c on a.id=c.id+2
where a.num=b.num AND b.num=c.num
group by a.num