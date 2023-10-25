# Write your MySQL query statement below
SELECT DISTINCT sell_date ,
IFNULL(COUNT(DISTINCT product),0) AS num_sold,
GROUP_CONCAT(DISTINCT product ORDER BY product ASC SEPARATOR ',' ) AS products  
FROM Activities 
GROUP BY sell_date
ORDER BY sell_date ASC;
