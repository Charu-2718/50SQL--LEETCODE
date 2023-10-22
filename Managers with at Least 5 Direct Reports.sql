# Write your MySQL query statement below
SELECT a.name 
FROM employee a 
LEFT JOIN employee b ON a.id=b.managerId
GROUP BY a.id
HAVING COUNT(b.name) >= 5;