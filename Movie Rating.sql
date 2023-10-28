# Write your MySQL query statement below
select * from 
    (select u.name as results from users u 
    join 
        (
            select user_id, count(user_id) as count from movierating 
            group by user_id
        ) as mr 
        on u.user_id = mr.user_id 
    order by mr.count desc, u.name limit 1) 
as user_query
union all 
select * from 
    (select m.title as results from movies m 
    join 
        (
            select movie_id, avg(rating) as avg_rating from movierating 
            where created_at >= '2020-02-01' and created_at <= '2020-02-28' 
            group by movie_id
        ) as sq 
        on m.movie_id = sq.movie_id 
    order by sq.avg_rating desc, m.title limit 1) 
as movie_query