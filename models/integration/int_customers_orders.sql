with customers as (

    select * from {{ ref('stg_customers')}}

),

orders as (

    select * from {{ ref('stg_orders') }}

),

customer_orders as ( select first_name, orders.customer_id, orders.order_id from customers 
    left join orders 
    on customers.customer_id = orders.customer_id
    where order_date > '{{var('date')}}'
)
select * from customer_orders

