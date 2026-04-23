USE northwind;
-- Question 1
SELECT ProductID, ProductName, UnitPrice
FROM products
ORDER BY UnitPrice asc;
-- Question 2
SELECT ProductName, ProductID, UnitPrice
FROM products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC;
-- Question 3
SELECT ProductName, ProductID, UnitPrice
FROM products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice desc, ProductName asc; 
-- Question 4
SELECT COUNT(DISTINCT CustomerID) AS CustomerCount
FROM orders;
-- Question 5
SELECT ShipCountry, COUNT(DISTINCT CustomerID) AS CustomerCount
FROM Orders 
group by Shipcountry
order by CustomerCount DESC;
-- Question 6
SELECT ProductName, UnitsInStock, UnitsOnOrder
FROM products
WHERE UnitsInStock <25 AND UnitsOnOrder >= 1 
ORDER BY UnitsOnOrder DESC, ProductName ASC;
-- Question 7
SELECT Title, COUNT(*) AS EmployeeCount
From Employees
Group By Title ;
-- Question 8
SELECT FirstName, LastName, Title, Salary
FROM Employees
WHERE Salary BETWEEN 2000 AND 2500
ORDER BY Title;
 