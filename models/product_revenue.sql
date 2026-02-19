{{config(materialized='view')}}

 Select p.PRODUCTNAME, sum(ROUNDED_PRICE*o.quantity) as revenue from 
    {{ref("dim_products")}} as p inner join
    {{ref("fact_orders")}} as o on p.PRODUCTID =o.PRODID
    group by  p.PRODUCTNAME