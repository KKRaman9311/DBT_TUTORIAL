
  
    
        create or replace table `dbt`.`default_bronze`.`bronze_returns`
      
      
    using delta
  
      
      
      
      
      
      
      
      
      as
      select 
    *
from
   `dbt`.`source`.`fact_returns`
  