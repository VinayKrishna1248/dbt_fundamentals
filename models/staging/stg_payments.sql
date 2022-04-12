with payments as (
    select * from {{ref('src_payments')}})


select ID as payment_id , orderid as order_id,
{{init_caps('paymentmethod')}} as paymentmethod,
status,
{{Rounding_amount('amount',2)}} as amount,
created,_batched_at
 from payments