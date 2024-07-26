# Write your MySQL query statement below
select p.product_name,sum(ord.unit) as unit from products p
join orders ord on p.product_id=ord.product_id where ord.order_date between '2020-02-01' and '2020-02-29'
group by p.product_id,p.product_name
having sum(ord.unit)>=100;
