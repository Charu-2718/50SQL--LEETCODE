SELECT query_name, 
IFNULL(ROUND(AVG(rating/position),2),0.00) AS quality, 
IFNULL(ROUND(SUM(case when rating<3 then 1 else 0 end)/count(*) *100 ,2),0.00) AS poor_query_percentage
FROM Queries 
GROUP BY  query_name;
