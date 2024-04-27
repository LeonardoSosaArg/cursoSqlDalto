-- CUSTOMERS = CLIENTES
-- SUPPLIERS = PROVEEDORES
-- SHIPPERS = TRANSPORTISTAS 

SELECT * FROM Customers

SELECT FullName = FirstName + ' ' + LastName, * 
FROM EMPLOYEES 

SELECT PriceDouble = UnitPrice*2 , * 
from products

SELECT *
FROM products
ORDER BY UnitPrice ASC --De menor a mayor 

SELECT *
FROM products
order by UnitPrice DESC --De mayor a menor 

SELECT DISTINCT PRODUCTNAME --Eliminar filas duplicadas, donde se repita ProductName
FROM products

SELECT *
FROM products
WHERE UnitPrice <= 40
ORDER BY UnitPrice DESC

SELECT *
FROM products
WHERE ProductID >= 50 AND  ProductID < 55

SELECT *
FROM products
WHERE ProductID >= 50 OR ProductID < 55

SELECT *
FROM products
WHERE ProductID between 50 and 55
