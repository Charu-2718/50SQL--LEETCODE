SELECT  a.project_id,
IFNULL(ROUND(AVG(b.employee_id),2),0.00) AS average_years 
FROM Project a
LEFT JOIN Employee b ON a.employee_id =b.employee_id 
GROUP BY project_id