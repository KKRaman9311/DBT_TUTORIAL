{{ config(
    materialized='view',schema='bronze'
) }}


select 
    *
from
   {{ source('my_source', 'fact_sales') }}