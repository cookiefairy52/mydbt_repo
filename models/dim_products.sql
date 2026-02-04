{{config(materialized='table')}}

select productid, productname, round(quantity) as rounded_price
from raw_data.Products