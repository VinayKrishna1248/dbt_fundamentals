with customers as (

    select * from {{ ref('stg_customers')}}

),

orders as (

    select * from {{ ref('stg_orders') }}

),

customer_orders as ( select first_name, orders.id from customers 
    left join orders 
    on customers.customer_id = orders.user_id
    where order_date > '{{var('date')}}'
)
select * from customer_orders

