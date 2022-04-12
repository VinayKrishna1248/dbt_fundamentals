with orders as  (
    select * from {{ ref('stg_orders' )}}),

payments as (
    select * from {{ ref('stg_payments') }}),

order_payments as (
    select
        payments.order_id,amount
    from payments
    where payments.status = '{{var('status')}}' and payments.amount > {{var('amount')}} and paymentmethod = '{{var('paymentmethod')}}' 
)

select * from order_payments