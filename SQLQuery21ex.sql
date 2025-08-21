--การ Query ข้อมูลจากหลายตาราง (Join)
-- 1.   จงแสดงข้อมูลรหัสใบสั่งซื้อ ชื่อบริษัทลูกค้า ชื่อและนามสกุลพนักงาน(ในคอลัมน์เดียวกัน) วันที่สั่งซื้อ ชื่อบริษัทขนส่งของ เมืองและประเทศที่ส่งของไป รวมถึงยอดเงินที่ต้องรับจากลูกค้าด้วย  
-- 2.   จงแสดง ข้อมูล ชื่อบริษัทลูกค้า ชื่อผู้ติดต่อ เมือง ประเทศ จำนวนใบสั่งซื้อที่เกี่ยวข้องและ ยอดการสั่งซื้อทั้งหมดเลือกมาเฉพาะเดือน มกราคมถึง มีนาคม  1997
-- 3.   จงแสดงชื่อเต็มของพนักงาน ตำแหน่ง เบอร์โทรศัพท์ จำนวนใบสั่งซื้อ รวมถึงยอดการสั่งซื้อทั้งหมดในเดือนพฤศจิกายน ธันวาคม 2539  โดยที่ใบสั่งซื้อนั้นถูกส่งไปประเทศ USA, Canada หรือ Mexico
-- 4.   จงแสดงรหัสสินค้า ชื่อสินค้า ราคาต่อหน่วย  และจำนวนทั้งหมดที่ขายได้ในเดือน มิถุนายน 2540
-- 5.   จงแสดงรหัสสินค้า ชื่อสินค้า ราคาต่อหน่วย และยอดเงินทั้งหมดที่ขายได้ ในเดือน มกราคม 2540 แสดงเป็นทศนิยม 2 ตำแหน่ง
-- 6.   จงแสดงชื่อบริษัทตัวแทนจำหน่าย ชื่อผู้ติดต่อ เบอร์โทร เบอร์ Fax รหัส ชื่อสินค้า ราคา จำนวนรวมที่จำหน่ายได้ในปี 1996
-- 7.   จงแสดงรหัสสินค้า ชื่อสินค้า ราคาต่อหน่วย  และจำนวนทั้งหมดที่ขายได้เฉพาะของสินค้าที่เป็นประเภท Seafood และส่งไปประเทศ USA ในปี 1997
-- 8.   จงแสดงชื่อเต็มของพนักงานที่มีตำแหน่ง Sale Representative อายุงานเป็นปี และจำนวนใบสั่งซื้อทั้งหมดที่รับผิดชอบในปี 1998
-- 9.   แสดงชื่อเต็มพนักงาน ตำแหน่งงาน ของพนักงานที่ขายสินค้าให้บริษัท Frankenversand ในปี  1996
-- 10.  จงแสดงชื่อสกุลพนักงานในคอลัมน์เดียวกัน ยอดขายสินค้าประเภท Beverage ที่แต่ละคนขายได้ ในปี 1996
-- 11.  จงแสดงชื่อประเภทสินค้า รหัสสินค้า ชื่อสินค้า ยอดเงินที่ขายได้(หักส่วนลดด้วย) ในเดือนมกราคม - มีนาคม 2540 โดย มีพนักงานผู้ขายคือ Nancy
-- 12.  จงแสดงชื่อบริษัทลูกค้าที่ซื้อสินค้าประเภท Seafood ในปี 1997
-- 13.  จงแสดงชื่อบริษัทขนส่งสินค้า ที่ส่งสินค้าให้ ลูกค้าที่มีที่ตั้ง อยู่ที่ถนน Johnstown Road แสดงวันที่ส่งสินค้าด้วย (รูปแบบ 106)
-- 14.  จงแสดงรหัสประเภทสินค้า ชื่อประเภทสินค้า จำนวนสินค้าในประเภทนั้น และยอดรวมที่ขายได้ทั้งหมด แสดงเป็นทศนิยม 4 ตำแหน่ง หักส่วนลด
-- 15.  จงแสดงชื่อบริษัทลูกค้า ที่อยู่ในเมือง London , Cowes ที่สั่งซื้อสินค้าประเภท Seafood จากบริษัทตัวแทนจำหน่ายที่อยู่ในประเทศญี่ปุ่นรวมมูลค่าออกมาเป็นเงินด้วย
-- 16.  แสดงรหัสบริษัทขนส่ง ชื่อบริษัทขนส่ง จำนวนorders ที่ส่ง ค่าขนส่งทั้งหมด  เฉพาะที่ส่งไปประเทศ USA
-- 17.  จงแสดงเต็มชื่อพนักงาน ที่มีอายุมากกว่า 60ปี จงแสดง ชื่อบริษัทลูกค้า,ชื่อผู้ติดต่อ,เบอร์โทร,Fax,ยอดรวมของสินค้าประเภท Condiment ที่ลูกค้าแต่ละรายซื้อ แสดงเป็นทศนิยม4ตำแหน่ง,และแสดงเฉพาะลูกค้าที่มีเบอร์แฟกซ์
-- 18.  จงแสดงข้อมูลว่า วันที่  3 มิถุนายน 2541 พนักงานแต่ละคน ขายสินค้า ได้เป็นยอดเงินเท่าใด พร้อมทั้งแสดงชื่อคนที่ไม่ได้ขายของด้วย
-- 19.  จงแสดงรหัสรายการสั่งซื้อ ชื่อพนักงาน ชื่อบริษัทลูกค้า เบอร์โทร วันที่ลูกค้าต้องการสินค้า เฉพาะรายการที่มีพนักงานชื่อมากาเร็ตเป็นคนรับผิดชอบพร้อมทั้งแสดงยอดเงินรวมที่ลูกค้าต้องชำระด้วย (ทศนิยม 2 ตำแหน่ง)
-- 20.  จงแสดงชื่อเต็มพนักงาน อายุงานเป็นปี และเป็นเดือน ยอดขายรวมที่ขายได้ เลือกมาเฉพาะลูกค้าที่อยู่ใน USA, Canada, Mexico และอยู่ในไตรมาศแรกของปี 2541

--1 
SELECT  o.OrderID,
        c.CompanyName       AS Customer,
        CONCAT(e.FirstName, e.LastName) AS EmployeeFullName,
        o.OrderDate,
        s.CompanyName       AS Shipper,
        o.ShipCity, o.ShipCountry,
        SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)) AS OrderTotal
FROM Orders o
JOIN Customers c   ON o.CustomerID = c.CustomerID
JOIN Employees e   ON o.EmployeeID = e.EmployeeID
JOIN Shippers s    ON o.ShipVia = s.ShipperID
JOIN [Order Details] od ON o.OrderID = od.OrderID
GROUP BY o.OrderID, c.CompanyName, e.FirstName, e.LastName, o.OrderDate, s.CompanyName, o.ShipCity, o.ShipCountry;

--2
SELECT  c.CompanyName, c.ContactName, c.City, c.Country,
        COUNT(DISTINCT o.OrderID) AS OrdersCount,
        SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)) AS TotalAmount
FROM Customers c
JOIN Orders o           ON c.CustomerID = o.CustomerID
JOIN [Order Details] od ON o.OrderID = od.OrderID
WHERE YEAR(o.OrderDate) = 1997 AND MONTH(o.OrderDate) BETWEEN 1 AND 3
GROUP BY c.CompanyName, c.ContactName, c.City, c.Country
ORDER BY TotalAmount DESC;

--3
SELECT  CONCAT(e.FirstName,e.LastName) AS Employee,
        e.Title, e.HomePhone,
        COUNT(DISTINCT o.OrderID) AS OrdersCount,
        SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)) AS TotalAmount
FROM Employees e
JOIN Orders o           ON e.EmployeeID = o.EmployeeID
JOIN [Order Details] od ON o.OrderID = od.OrderID
WHERE YEAR(o.OrderDate) = 1996
  AND MONTH(o.OrderDate) BETWEEN 11 AND 12
  AND o.ShipCountry IN ('USA','Canada','Mexico')
GROUP BY e.FirstName, e.LastName, e.Title, e.HomePhone
ORDER BY TotalAmount DESC;

--4
SELECT  p.ProductName, cat.CategoryName, p.UnitPrice,
        SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)) AS SalesTotal
FROM Products p
JOIN Categories cat    ON p.CategoryID = cat.CategoryID
JOIN [Order Details] od ON p.ProductID = od.ProductID
JOIN Orders o          ON od.OrderID = o.OrderID
WHERE YEAR(o.OrderDate) = 1997 AND MONTH(o.OrderDate) = 6
GROUP BY p.ProductName, cat.CategoryName, p.UnitPrice
ORDER BY SalesTotal DESC;

--5
WITH sales AS (
  SELECT p.ProductID,
         SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)) AS amt
  FROM [Order Details] od
  JOIN Orders o   ON od.OrderID = o.OrderID
  JOIN Products p ON p.ProductID = od.ProductID
  WHERE YEAR(o.OrderDate)=1997 AND MONTH(o.OrderDate)=1
  GROUP BY p.ProductID
),
avgx AS (SELECT AVG(amt) AS avg_amt FROM sales)
SELECT  p.ProductName, cat.CategoryName, p.UnitPrice, s.amt AS SalesTotal
FROM sales s
JOIN Products p   ON s.ProductID = p.ProductID
JOIN Categories cat ON p.CategoryID = cat.CategoryID
CROSS JOIN avgx
WHERE s.amt >= 2 * avgx.avg_amt
ORDER BY s.amt DESC;

--6
SELECT  sup.CompanyName,
        sup.Phone, sup.Fax,
        AVG(p.UnitPrice) AS AvgPrice,
        SUM(od.Quantity) AS TotalUnitsSold
FROM Suppliers sup
JOIN Products p         ON sup.SupplierID = p.SupplierID
JOIN [Order Details] od ON p.ProductID    = od.ProductID
JOIN Orders o           ON od.OrderID     = o.OrderID
WHERE o.OrderDate >= '1996-01-01' AND o.OrderDate < '1997-01-01'
GROUP BY sup.CompanyName, sup.Phone, sup.Fax
ORDER BY TotalUnitsSold DESC;


--7
SELECT  cat.CategoryName,
        SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)) AS SalesUSA1997
FROM Categories cat
JOIN Products p        ON cat.CategoryID = p.CategoryID
JOIN [Order Details] od ON p.ProductID    = od.ProductID
JOIN Orders o          ON od.OrderID      = o.OrderID
WHERE cat.CategoryName = 'Seafood'
  AND YEAR(o.OrderDate) = 1997
  AND o.ShipCountry = 'USA'
GROUP BY cat.CategoryName;

--8
SELECT  CONCAT(e.FirstName,e.LastName) AS Employee,
        COUNT(DISTINCT o.OrderID) AS Orders1998
FROM Employees e
LEFT JOIN Orders o ON e.EmployeeID = o.EmployeeID
                 AND YEAR(o.OrderDate)=1998
WHERE e.Title = 'Sales Representative'
GROUP BY e.FirstName, e.LastName
ORDER BY Orders1998 DESC;

--9
SELECT *
FROM Orders o
JOIN Shippers s ON o.ShipVia = s.ShipperID
WHERE s.CompanyName = 'Frankenversand' AND YEAR(o.OrderDate) = 1996;

  --10
  SELECT  c.CompanyName,
        COUNT(DISTINCT o.OrderID) AS Orders1996_Beverages
FROM Customers c
JOIN Orders o           ON c.CustomerID = o.CustomerID AND YEAR(o.OrderDate)=1996
JOIN [Order Details] od ON o.OrderID    = od.OrderID
JOIN Products p         ON od.ProductID = p.ProductID
JOIN Categories cat     ON p.CategoryID = cat.CategoryID
WHERE cat.CategoryName = 'Beverages'
GROUP BY c.CompanyName
HAVING COUNT(DISTINCT o.OrderID) > 1
ORDER BY Orders1996_Beverages DESC;

--11
SELECT  c.CompanyName,
        SUM(od.UnitPrice*od.Quantity*(1-od.Discount)) AS SalesAmt
FROM Customers c
JOIN Orders o           ON c.CustomerID = o.CustomerID
JOIN [Order Details] od ON o.OrderID    = od.OrderID
JOIN Employees e        ON o.EmployeeID = e.EmployeeID
WHERE e.FirstName = 'Nancy'
  AND (
        (YEAR(o.OrderDate)=1996 AND MONTH(o.OrderDate) IN (10,11,12)) OR
        (YEAR(o.OrderDate)=1997 AND MONTH(o.OrderDate) IN (1,2,3))
      )
GROUP BY c.CompanyName
ORDER BY SalesAmt DESC;

--12
SELECT DISTINCT c.CompanyName
FROM Customers c
JOIN Orders o           ON c.CustomerID = o.CustomerID AND YEAR(o.OrderDate)=1997
JOIN [Order Details] od ON o.OrderID    = od.OrderID
JOIN Products p         ON od.ProductID = p.ProductID
JOIN Categories cat     ON p.CategoryID = cat.CategoryID
WHERE cat.CategoryName = 'Seafood'
ORDER BY c.CompanyName;

--13
SELECT  c.CompanyName, c.Address, c.City, c.Region, c.PostalCode, c.Country
FROM Customers c
WHERE c.Address LIKE '%Johnstown Road%';

--14
SELECT TOP 4 c.Country, c.City,
       COUNT(*) AS LinesSold
FROM Customers c
JOIN Orders o           ON c.CustomerID = o.CustomerID
JOIN [Order Details] od ON o.OrderID    = od.OrderID
GROUP BY c.Country, c.City
ORDER BY LinesSold DESC;

--15
SELECT DISTINCT c.CompanyName
FROM Customers c
JOIN Orders o           ON c.CustomerID = o.CustomerID
JOIN [Order Details] od ON o.OrderID    = od.OrderID
JOIN Products p         ON od.ProductID = p.ProductID
JOIN Categories cat     ON p.CategoryID = cat.CategoryID
JOIN Suppliers sup      ON p.SupplierID = sup.SupplierID
WHERE cat.CategoryName = 'Seafood'
  AND c.Country = 'UK' AND c.City IN ('London','Cowes')
  AND sup.Country = 'Japan';

  --16
SELECT
    s.ShipperID,
    s.CompanyName,
    COUNT(o.OrderID) AS NumberOfOrders,
    SUM(o.Freight) AS TotalFreight
FROM
    Northwind.dbo.Shippers AS s
INNER JOIN 
    Northwind.dbo.Orders AS o ON s.ShipperID = o.ShipVia
WHERE
    o.ShipCountry = 'USA'
GROUP BY
    s.ShipperID, s.CompanyName
ORDER BY
    TotalFreight DESC;

--17
SELECT  o.OrderID, c.CompanyName, s.CompanyName AS Shipper,
        o.ShipCity, o.ShipCountry,
        SUM(od.UnitPrice*od.Quantity*(1-od.Discount)) AS ShippedTotal
FROM Orders o
JOIN [Order Details] od ON o.OrderID = od.OrderID
JOIN Customers c        ON o.CustomerID = c.CustomerID
JOIN Shippers s         ON o.ShipVia = s.ShipperID
WHERE CONVERT(date, o.ShippedDate) = '1997-06-03'
GROUP BY o.OrderID, c.CompanyName, s.CompanyName, o.ShipCity, o.ShipCountry
ORDER BY ShippedTotal DESC;

--18
SELECT  MAX(p.UnitPrice) AS MaxPrice,
        MIN(p.UnitPrice) AS MinPrice,
        AVG(p.UnitPrice) AS AvgPrice,
        CONCAT(e.FirstName,e.LastName) AS Employee,
        c.CompanyName, c.Phone
FROM Orders o
JOIN [Order Details] od ON o.OrderID = od.OrderID
JOIN Products p         ON od.ProductID = p.ProductID
JOIN Employees e        ON o.EmployeeID = e.EmployeeID
JOIN Customers c        ON o.CustomerID = c.CustomerID
WHERE o.ShippedDate IS NOT NULL
GROUP BY CONCAT(e.FirstName,e.LastName), c.CompanyName, c.Phone
ORDER BY AvgPrice DESC;

--19

DECLARE @MaxShipDays int          = 7;
DECLARE @MinFactor   decimal(4,2) = 1.00;

;WITH OT AS (
  SELECT o.OrderID,
         CONCAT(e.FirstName, e.LastName) AS EmployeeFullName,
         c.CompanyName AS CustomerName,
         c.Phone AS CustomerPhone,
         DATEDIFF(DAY, o.OrderDate, o.ShippedDate) AS LeadDaysShip,
         SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)) AS OrderTotal
  FROM Orders o
  JOIN [Order Details] od ON o.OrderID = od.OrderID
  JOIN Customers c ON o.CustomerID = c.CustomerID
  JOIN Employees e ON o.EmployeeID = e.EmployeeID
  WHERE o.ShippedDate IS NOT NULL
  GROUP BY o.OrderID, e.FirstName, e.LastName, c.CompanyName, c.Phone, o.OrderDate, o.ShippedDate
),
ST AS (
  SELECT AVG(OrderTotal) AS AvgTotal FROM OT
)
SELECT OT.OrderID, OT.EmployeeFullName, OT.CustomerName, OT.CustomerPhone,
       OT.OrderTotal, OT.LeadDaysShip AS LeadDays
FROM OT CROSS JOIN ST
WHERE OT.LeadDaysShip <= @MaxShipDays
  AND OT.OrderTotal   >= @MinFactor * ST.AvgTotal
ORDER BY OT.OrderTotal DESC;






--20
SELECT  CONCAT(e.FirstName,e.LastName) AS Employee,
        SUM(od.UnitPrice*od.Quantity*(1-od.Discount)) AS Q1_1998_Sales_NA
FROM Employees e
JOIN Orders o           ON e.EmployeeID = o.EmployeeID
JOIN [Order Details] od ON o.OrderID    = od.OrderID
JOIN Customers c        ON o.CustomerID = c.CustomerID
WHERE YEAR(o.OrderDate)=1998
  AND MONTH(o.OrderDate) BETWEEN 1 AND 3
  AND c.Country IN ('USA','Canada','Mexico')
  AND DATEDIFF(year, e.HireDate, o.OrderDate) >= 1
GROUP BY e.FirstName, e.LastName
ORDER BY Q1_1998_Sales_NA DESC;







