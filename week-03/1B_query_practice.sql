USE northwind ;
-- Question 1
SELECT ProductID, ProductName, UnitPrice
FROM products;

-- Question 2
SELECT Productname, Unitprice
FROM products
WHERE unitprice <= 7.50;

-- Question 3
SELECT productname, unitsinstock, unitsonorder
FROM products
WHERE UnitsInStock = 0
AND UnitsOnOrder > 0;

-- Question 4
SELECT ProductName, CategoryName
FROM products
JOIN categories
ON products.CategoryID = categories.CategoryID
WHERE CategoryName = 'Seafood';

-- Question 5, To know what supplier each product comes from
SELECT ProductName, SupplierID
FROM products;

-- Supplier info comes from the supplier table
-- Information for Tokyo Traders
SELECT SupplierID, CompanyName
FROM suppliers
WHERE CompanyName = 'Tokyo Traders';

-- All products from Tokyo Traders
SELECT p.ProductName, s.CompanyName
FROM products p 
JOIN suppliers s 
ON p.SupplierID = s.SupplierID
WHERE s.CompanyName = 'Tokyo Traders' ;

-- Question 6
SELECT *
FROM employees;

-- How many managers in job title
SELECT *
FROM employees
WHERE Title LIKE '%manager%'; 



 

