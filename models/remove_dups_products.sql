{{
    config( materialized='table',
    alias= 'dim_products_uniq',
    
    pre_hook ="{{audit_macro('remove_dups_products', 'start')}}",
    post_hook="{{audit_macro('remove_dups_products', 'Completed')}}"
    )
}}

SELECT * from DB.CURATED_DATa.PRODUCTS_UNIQ