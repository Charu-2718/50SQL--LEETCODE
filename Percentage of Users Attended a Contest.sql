SELECT b.contest_id,
ROUND(COUNT( b.user_id)/(SELECT COUNT(*) FROM users) *100 ,2)AS percentage 
FROM Users a 
RIGHT JOIN Register b ON a.user_id =b.user_id
GROUP BY contest_id
ORDER BY percentage DESC,contest_id