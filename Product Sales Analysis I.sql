# Write your MySQL query statement below
SELECT  product_name, year, price 
FROM Sales
LEFT JOIN Product USING (product_id);