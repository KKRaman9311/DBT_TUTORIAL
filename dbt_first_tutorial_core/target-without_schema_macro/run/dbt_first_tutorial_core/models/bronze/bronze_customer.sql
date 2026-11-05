
  
  
  create or replace view `dbt`.`default_bronze`.`bronze_customer`
  
  
  as (
    select 
    *
from
   `dbt`.`source`.`dim_customer`
  )
