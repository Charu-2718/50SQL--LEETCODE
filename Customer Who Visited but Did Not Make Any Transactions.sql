# Write your MySQL query statement below
SELECT n.customer_id,count(n.visit_id) AS count_no_trans 
FROM Visits n
LEFT JOIN Transactions t
ON n.visit_id= t.visit_id
WHERE transaction_id IS NULL
GROUP BY n.customer_id;