with customers as(
    select custid ,customername 
    from {{ source('factorder', 'customers') }}
),
orders as(
    select orderid,custid,paymemts 
    from {{ source('factorder', 'orders') }}
)
select 
  customername,
  payments
from
orders 
left join customers
on orders.custid = customers.custid