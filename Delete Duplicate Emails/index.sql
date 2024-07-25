# Write your MySQL query statement below
delete p from person p inner join person p1 where p.email=p1.email and p.id>p1.id;
