
  
    
        create or replace table `dbt`.`default_bronze`.`bronze_store`
      
      
    using delta
  
      
      
      
      
      
      
      
      
      as
      select 
    *
from
   `dbt`.`source`.`dim_store`
  