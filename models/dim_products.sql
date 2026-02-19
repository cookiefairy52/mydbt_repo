{{config(materialized='table', tag='tag1')}}

select productid, productname, round(quantity) as rounded_price
from {{source('RAW_DATA','products')}}