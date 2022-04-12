with customer_orders as (

    select * from {{ ref('int_customers_orders')}}
    ),

order_payments as (

    select * from {{ ref('int_order_payment')}}),

Intermediate as (
select first_name,customer_orders.customer_id,order_payments.amount
 from customer_orders left join order_payments
  where customer_orders.order_id = order_payments.order_id 
  )

select * from intermediate