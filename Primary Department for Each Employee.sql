# Write your MySQL query statement below
select distinct employee_id,
department_id
from Employee
where primary_flag = 'Y' 
group by employee_id 
union 
select distinct employee_id,
department_id
from Employee
group by employee_id
having count(department_id)=1
