
  
  
  create or replace view `dbt`.`default_bronze`.`bronze_sales`
  
  
  as (
    select 
    *
from
   `dbt`.`source`.`fact_sales`
  )
