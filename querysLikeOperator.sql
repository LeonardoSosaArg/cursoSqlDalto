--Operador Like
SELECT * FROM Customers

SELECT *
FROM products
WHERE QuantityPerUnit IS NOT NULL
ORDER BY QuantityPerUnit

--Comodin %
--Donde el apellido termine con R
SELECT *
FROM EMPLOYEES
WHERE LastName LIKE '%R'

--Donde el apellido comience con N
SELECT *
FROM EMPLOYEES
WHERE LastName LIKE 'S%'

SELECT *
FROM EMPLOYEES
WHERE LastName LIKE '%ER%'

SELECT *
FROM EMPLOYEES
WHERE LastName NOT LIKE 'S%'