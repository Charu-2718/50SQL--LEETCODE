# Write your MySQL query statement below
SELECT product_id, year AS first_year, quantity,price
FROM Sales
where (product_id,year) in (select product_id, min(year) FROM Sales 
group by product_id )