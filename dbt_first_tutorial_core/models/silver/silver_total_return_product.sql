WITH return as(
    select
        sales_id,
        product_sk,
        returned_qty 
    from
        {{ref("bronze_returns")}}
),
products as(
    select
        product_sk,
        product_name,
        department
    from
        {{ref("bronze_product")}}
),

joined_query as(
    select
        r.sales_id,
        p.product_name,
        p.department,
        r.returned_qty
    from
        return r
    join
        products p
    on
        r.product_sk = p.product_sk
)

select
    product_name,
    department,
    sum(returned_qty) as total_returned_qty
from
    joined_query
group by
    department,
    product_name
order by
    department,
    product_name