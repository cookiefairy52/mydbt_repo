{{config(materialized='table')}}
SELECT customer_id,
    SUBSTRING(customer_name, 1, CHARINDEX(' ', customer_name) - 1) AS FirstName,
    SUBSTRING(customer_name, CHARINDEX(' ', customer_name) + 1, LEN(customer_name)) AS LastName,
    address
FROM
    raw_data.customer