-- The name of the table that holds the items Northwind sells is products
-- The name fo the table that hold the type/categories that northwind sells is categories
SELECT * FROM employees;
-- The employee whose name looks like a bird is Margraret Peacock
-- The query returns 77 records. To retrieve only 10 rows use the drop down in the tool bar and adjust to 10 rows
SELECT * FROM categories;
-- The category ID for seafood is 8
SELECT OrderID, OrderDate, ShipName, ShipCountry FROM orders LIMIT 50;