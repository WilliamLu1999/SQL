#1270Medium
# left self join
Select e1.employee_id
FROM Employees e1 LEFT JOIN Employees e2 ON e1.manager_id = e2.employee_id LEFT JOIN Employees e3 ON e2.manager_id = e3.employee_id WHERE e3.manger_id=1 and e1.employee_id <> e1.manager_id

# because the indirect relations will not exceed three, we no longer need to left join the third time.


with cte as (
select employee_id from employees where manager_id in (select  employee_id from employees where manager_id in (
select employee_id from employees where manager_id = 1)))
select distinct employee_id from cte where employee_id != 1