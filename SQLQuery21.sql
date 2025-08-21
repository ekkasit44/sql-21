

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
where shippers.shipperid = orders.shipvia
and orderid = 10275

select companyname,orderid
from orders join shippers
on shippers.shipperid=orders.shipvia
where orderid=10275


select EmployeeID, firstname, orderid
from Employee as e join orders as o on e.EmployeeID = o.EmployeeID
order by EmployeeID


select productid, productname, city,country
from products p join suppliers s on p.supplierid = s.supplierID

select companyname, count(*)
from orders as o join shippers as s on o.shipvia = s.shipperid
group by CompanyName


select p.productid,p.productname,sum(quantity) as จำนวนที่ขายได้ทั้งหมด
from products p join [Order Details] od on p.productid = od.ProductID
group by p.ProductID,p.ProductName
order by 1

select O.Orderid เลขใบคำสั่งซื้อ, C.CompanyName ลูกค้า,E.FirstName พนักงาน, O.ShipAddress ส่งไปที่
from order o join customers C on O.customerid=C.customerid
join Employees e on O.employeeid=E.employeeid


select e.EmployeeID ,FirstName , count(*) as [จำนวนorder]
,sum(freight) as [sum of freight]
from Employees e join orders o on e.EmployeeID = o.EmployeeID
where year(OrderDate)=1998
group by e.EmployeeID,FirstName

select p.productid,p.productname
from Employees e join orders o on e.EmployeeID= o.EmployeeID
                 join[Order Details] od on o.OrderID= od.OrderID
                 join products p on od.ProductID= p.ProductID
where e.FirstName= 'Nacy'
order by productid

select * 
from Customers c join orders o on c.CustomerID= o.CustomerID
join [Order Details] od on o.OrderID= od.OrderID
join  Products p on  od.ProductID= p.ProductID
join suppliers s on s.supplierid = p.SupplierID

select p.Productid, p.producname,Quantity
from Customers c join order o on c.CustomerID= o.customerid
join [Order Details] od on od.OrderID= o.orderid
join Products p on p.ProductID = od.ProductID
where c.CompanyName = 'Around the horn'