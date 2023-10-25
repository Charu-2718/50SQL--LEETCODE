# Write your MySQL query statement below
SELECT a.employee_id
FROM Employees a
WHERE a.salary < 30000 
AND a.manager_id NOT IN(select employee_id from Employees)
ORDER BY employee_id ASC;