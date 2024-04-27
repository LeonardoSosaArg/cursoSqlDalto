--GROUP BY

--Promedio de precios de productos agrupados por Proveedor
SELECT SupplierId, ROUND(AVG(UnitPrice), 2) AS Promedio
FROM Products
GROUP BY SupplierId
ORDER by Promedio

--Para utilizar filtros sobre funciones de agregacion debemos utlizar HAVING
--Having filtra grupos
SELECT SupplierId, ROUND(AVG(UnitPrice), 2) AS Promedio
FROM Products
GROUP BY SupplierId
HAVING ROUND(AVG(UnitPrice), 2) > 15
ORDER by Promedio


SELECT *
FROM ORDERS

SELECT *
FROM OrderDETAILS