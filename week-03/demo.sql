USE Northwind;
Select o.OrderID, c.CompanyName  AS 'Customer', O.OrderDate
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
ORDER BY o.OrderDate DESC
LIMIT 5;

SELECT OrderID, CompanyName, OrderDate
From orders
JOIN Customers USING (CustomerID)
ORDER BY OrderDate
LIMIT 5;

SELECT p.ProductName, c.CategoryName, p.UnitPrice
FROM products p
INNER JOIN categories c USING (CategoryID)
ORDER BY c.CategoryName, p.ProductName
LIMIT 6;
-- Example 5
SELECT c.CompanyName, COUNT(o.OrderID) AS 'Order Count'
FROM Customers c 
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CompanyName
ORDER BY 'Order Count' ASC
LIMIT 5;
