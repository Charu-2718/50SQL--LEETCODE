# Write your MySQL query statement below
SELECT a.product_name,
sum(b.unit) AS unit  
FROM Products a
JOIN Orders b ON a.product_id=b.product_id AND b.order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY a.product_name
HAVING SUM(b.unit)>=100
ORDER BY  b.unit DESC;