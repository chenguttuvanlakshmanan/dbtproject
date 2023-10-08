with customers as(
    select custid ,customername 
    from {{ source('factorder', 'customers') }}
),
orders as(
    select orderid,custid,payments 
    from {{ source('factorder', 'orders') }}
)
select 
  customers.customername,
  orders.payments
from
orders 
left join customers
on orders.custid = customers.custid