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

SELECT COUNT(*) AS Total_orders
FROM orders;

SELECT SUM(Freight) AS Total_Freight,
AVERAGE(Freight) AS Average_Freight,
MIN(Freight) AS Min_Freight,
MAX(Freight) AS Max_Freight
FROM orders;

-- part 3B
-- question 1
SELECT ProductID, ProductName, UnitPrice, UnitsInStock 
FROM Products
ORDER BY UnitPrice DESC;
-- question 2
SELECT COUNT(*) CustomerID
FROM Customers

