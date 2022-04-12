with customers as (

    select * from {{ ref('src_customers') }}

)


select
    id as customer_id,
    {{trim('first_name')}} as first_name,
    {{trim('last_name')}} as last_name
from customers

