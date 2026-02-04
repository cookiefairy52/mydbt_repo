
{{config(materialized='incremental',
unique_key='orderid',
query_tag="orders_model"
)}}

select orderid,prodid,customerid, order_date, quantity,year(order_date) as order_year ,
 month(order_date) as order_month
 from DB.RAW_DATA.orders

{%if is_incremental()%}
 where order_date > (Select max(order_date) from {{this}})
 {% endif %}