
  
  
  create or replace view `dbt`.`default_bronze`.`bronze_product`
  
  
  as (
    select 
    *
from
   `dbt`.`source`.`dim_product`
  )
