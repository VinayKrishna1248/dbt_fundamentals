with customer_orders as (

    select * from {{ ref('int_customers_orders')}}
    ),

order_payments as (

    select * from {{ ref('int_order_payment')}}),

Intermediate as (
select first_name from customer_orders left join order_payments where customer_orders.id = order_payments.orderid)

select * from intermediate