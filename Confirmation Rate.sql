# Write your MySQL query statement below
SELECT 
a.user_id,
IFNULL(ROUND(SUM(b.action='confirmed')/count(*),2),0.00) AS confirmation_rate
FROM Signups AS a
LEFT JOIN Confirmations b ON a.user_id=b.user_id
GROUP BY a.user_id 
