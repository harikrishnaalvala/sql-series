# Write your MySQL query statement below
select product.product_name as product_name,sales.year as year, sales.price as price
from product right join sales on product.product_id=sales.product_id
order by year desc;
