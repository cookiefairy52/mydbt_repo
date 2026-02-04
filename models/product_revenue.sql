{{config(materialized='view')}}

 Select p.PRODUCTNAME, sum(ROUNDED_PRICE*o.quantity) as revenue from 
    CURATED_DATA.DIM_PRODUCTS as p inner join
    CURATED_DATA.FACT_ORDERS as o on p.PRODUCTID =o.PRODID
    group by  p.PRODUCTNAME