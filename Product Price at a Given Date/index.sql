# Write your MySQL query statement below
select distinct t1.product_id,t2.new_price as price from (select product_id,max(change_date) as change_date
from products where change_date<='2019-08-16' group by product_id
) t1 join products t2 where t1.product_id=t2.product_id and t1.change_date=t2.change_date
union select product_id,10 as price from products group by product_id having min(change_date)>'2019-08-16'
