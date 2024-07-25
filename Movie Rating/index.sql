# Write your MySQL query statement below
(select name as results from movierating join users using(user_id) group by user_id order by count(rating) desc, name limit 1)
union all (select title as results from movierating join movies using(movie_id) where year(created_at)=2020 and month(created_at)=02 group by title order by avg(rating) desc,title limit 1)
