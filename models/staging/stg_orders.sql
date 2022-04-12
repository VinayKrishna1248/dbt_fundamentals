with orders as (

    select * from {{ ref('src_orders')}}

)
select 
id as order_id,
user_id as customer_id,
order_date,status,_ETL_Loaded_at
from orders