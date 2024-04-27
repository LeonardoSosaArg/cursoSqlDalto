SELECT * FROM Customers

SELECT *
FROM Products
WHERE SupplierId IN (3,4,5)

SELECT *
FROM Employees
WHERE LastName IN ('Fuller', 'King')

SELECT *
FROM Employees
WHERE LastName NOT IN ('Fuller', 'King')

--CONTADOR
SELECT COUNT(FirstName) AS 'CantidadDeNombres'
FROM Employees

--ACUMULADOR SUMA
SELECT SUM(UnitPrice) 'Suma total de precios por unidad'
from Products

--PROMEDIO
SELECT AVG(UnitPrice) 'Promedio de precios por unidad'
from Products

--Redondeo
SELECT ROUND(AVG(UnitPrice), 2) 'Promedio Redondeado de precios por unidad'
from Products

--MIN
SELECT MIN(UnitPrice) 'Menor precio'
from Products

SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice = (SELECT MIN(UnitPrice) FROM Products);

--MAX
SELECT MAX(UnitPrice) 'Mayor precio'
from Products

