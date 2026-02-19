{% snapshot orders_snapshot%}

{{
    config(
        target_database='DB',
        target_schema='CURATED_DATA',
        unique_key='order_id',
        strategy='timestamp',
        updated_at='updated_at'

    )
}}
Select * from DB.raw_data.order_sn

{% endsnapshot %}    