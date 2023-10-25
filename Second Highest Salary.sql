# # Write your MySQL query statement below
SELECT 
IFNULL(round(MAX(salary),1),null) AS SecondHighestSalary
FROM Employee
WHERE salary <> (SELECT MAX(salary) FROM Employee) 
