{{config(materialized='ephemeral')}}

select department_id, avg(salary)as dept_avg_salary
from RAW_DATA.employeeS
group by department_id