WITH item_cte as(
select 
    *,
    row_number() over(partition by item_name order by updateDate desc) as item_current_no
from
    {{ source('my_source', 'dim_items') }}
)

select 
    item_id,
    item_name,
    item_category,
    updateDate
from
    item_cte
where
    item_current_no = 1