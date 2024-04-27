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

SELECT *
FROM EMPLOYEES
WHERE FirstName = 'Nancy' OR  FirstName = 'Steven'

SELECT *
FROM products
WHERE (UnitPrice < 20 OR CategoryId = 6) AND SupplierId = 7

SELECT *
FROM CUSTOMERS 
WHERE NOT COUNTRY IN ('USA', 'France')

SELECT TOP 5 *
FROM CUSTOMERS 
WHERE NOT COUNTRY = 'Germany'
ORDER BY NEWID() 
-- La funcion NEWID() genera un GUID unico para cada fila en el conjunto de resultados, 
-- lo que efectivamente produce un orden aleatorio. 

SELECT *
FROM products
WHERE UnitPrice between 20 and 40
ORDER by UnitPrice DESC

SELECT *
FROM products
WHERE UnitPrice NOT between 20 and 40
ORDER by UnitPrice DESC

--HireDate = 'Fecha de contratacion'
--El between incluye los valores limites.
SELECT *
FROM EMPLOYEES
WHERE BIRTHDATE BETWEEN '1950-01-01' AND '1960-01-01'

-- 1 = TRUE / 0 = FALSE
