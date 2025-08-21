

select companyname, orderId
from orders, shippers
where shippers.shipperID = orders.shipvia

select companyname, orderId
from orders join shippers
ON shippers.shipperid = orders.shipvia


select c.categoryname, p.productname, p.unitprice
from products as p, categories as c
where p.categoryid = c.categoryid

select companyname, orderid
from orders, shippers
where shippers.shippid
