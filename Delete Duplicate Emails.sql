# Write your MySQL query statement below
DELETE p 
FROM Person p
JOIN Person q
ON p.email=q.email
AND p.id>q.id