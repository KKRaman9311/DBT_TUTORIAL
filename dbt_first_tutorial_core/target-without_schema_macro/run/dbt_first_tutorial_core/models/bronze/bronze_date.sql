
  
    
        create or replace table `dbt`.`default_bronze`.`bronze_date`
      
      
    using delta
  
      
      
      
      
      
      
      
      
      as
      select 
    *
from
   `dbt`.`source`.`dim_date`
  