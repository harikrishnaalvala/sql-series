# Write your MySQL query statement below
select employeeuni.unique_id as unique_id,employees.name as name
from employees left join employeeuni on employees.id=employeeuni.id;
