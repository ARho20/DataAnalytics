USE northwind;
-- Question 1
SELECT p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName
FROM products p 
JOIN Categories c ON p.CategoryID = c.CategoryID
ORDER BY c.CategoryName ASC, p.ProductName ASC ; 
-- Question 2
SELECT p.ProductID, p.ProductName, p.UnitPrice, s.CompanyName
FROM products p
JOIN suppliers s ON p.SupplierID = s.SupplierID
WHERE p.UnitPrice > 75
ORDER BY p.ProductName ASC ;
-- Question 3
SELECT p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName, s.CompanyName
FROM products p 
JOIN categories c ON c.CategoryID = p.CategoryID
JOIN suppliers s ON p.SupplierID = s.SupplierID
ORDER BY p.ProductName ;
-- Question 4
SELECT o.OrderID, o.ShipName, o.ShipAddress, s.CompanyName AS 'Shipper'
FROM orders o 
JOIN shippers s ON o.ShipVia = s.ShipperID
WHERE o.ShipCountry = 'Germany';
-- Question 5
SELECT o.ShipName, s.CompanyName AS Shipper, COUNT(*) AS OrderCount
FROM orders o 
JOIN shippers s 
ON o.ShipVia = s.ShipperID
WHERE o.ShipCountry = 'Germany'
GROUP BY o.ShipName, s.CompanyName
ORDER BY Shipper, o.ShipName ;
-- Question 6
SELECT o.OrderID, o.OrderDate, o.ShipName, o.ShipAddress
FROM orders o 
JOIN `order details` od ON o.OrderID = od.OrderID
JOIN products p
ON od.ProductID = p.ProductID
WHERE p.ProductName = 'Sasquatch Ale' ;