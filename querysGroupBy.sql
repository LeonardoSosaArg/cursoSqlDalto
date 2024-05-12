-- JOINS --
SELECT * FROM Employees
SELECT * FROM OrderDetails Od
SELECT * FROM Orders
SELECT * FROM Rewards

--Inner Join
SELECT e.FirstName, Reward, MonthReward 
FROM Rewards R
JOIN Employees e 
    ON R.EmployeeID = e.EmployeeID

--Left
SELECT e.FirstName, Reward, MonthReward 
FROM Rewards R
LEFT JOIN Employees e 
    ON R.EmployeeID = e.EmployeeID

--Right
SELECT e.FirstName, Reward, MonthReward 
FROM Rewards R
RIGHT JOIN Employees e 
    ON R.EmployeeID = e.EmployeeID

--Full
SELECT e.FirstName, Reward, MonthReward 
FROM Rewards R
FULL JOIN Employees e 
    ON R.EmployeeID = e.EmployeeID


SELECT OrderID, e.LastName 
FROM Orders Ord
JOIN Employees e 
    ON ord.EmployeeID = e.EmployeeID

SELECT 
    E.EmployeeID,
    TotalVendido = SUM(Quantity)
FROM ORDERS Ord
JOIN Employees E 
    on Ord.EmployeeID = E.EmployeeID
JOIN OrderDetails Od 
    on Ord.OrderID = od.OrderID
JOIN Products P 
    on od.ProductID = p.ProductID
GROUP by e.EmployeeID
ORDER BY EmployeeID



-- SUB CONSULTAS --
SELECT 
    E.EmployeeID,
    AVG(SUM(Quantity)) as promedioVendido
FROM ORDERS Ord
JOIN Employees E 
    on Ord.EmployeeID = E.EmployeeID
JOIN OrderDetails Od 
    on Ord.OrderID = od.OrderID
JOIN Products P 
    on od.ProductID = p.ProductID
GROUP by e.EmployeeID
ORDER BY EmployeeID

SELECT 
    ProductID, 
    TotalVendido = SUM(Quantity),
    ProductName = (SELECT ProductName FROM Products WHERE ProductID = od.ProductID),
    Price = (SELECT UnitPrice FROM Products WHERE ProductID = od.ProductID),
    TotalFacturado = SUM(Quantity) * (SELECT UnitPrice FROM Products WHERE ProductID = od.ProductID)
FROM OrderDetails Od
GROUP by ProductID
ORDER by ProductID

-- Total Recaudado de cada producto
SELECT 
    Od.ProductID, 
    P.ProductName,
    P.UnitPrice,
    TotalVendidos = SUM(Quantity),
    TotalRecaudado = P.UnitPrice * SUM(Quantity)  
FROM OrderDETAILS Od
JOIN Products P 
    ON P.ProductID = Od.ProductID
GROUP BY Od.ProductID, P.ProductName, P.UnitPrice
ORDER by TotalVendidos DESC


-- GROUP BY --
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

--La cantidad de ventas de productos, ordenadas de mayor a menor.
SELECT ProductID, SUM(Quantity) as TotalVendidos 
FROM OrderDETAILS
GROUP BY ProductID
ORDER by TotalVendidos DESC

--Quiero saber los productos, los cuales se vendieron menos de 100 unidades
--Para no comprar mas
SELECT ProductID, SUM(Quantity) as TotalVendidos 
FROM OrderDETAILS
GROUP BY ProductID
HAVING SUM(Quantity) < 100
ORDER by TotalVendidos DESC

--Quiero saber los productos, los cuales se vendieron mas de 1000 unidades
--Para comprar mas cantidad
SELECT ProductID, SUM(Quantity) as TotalVendidos 
FROM OrderDETAILS
GROUP BY ProductID
HAVING SUM(Quantity) > 1000
ORDER by TotalVendidos DESC

--El producto mas vendido
SELECT TOP 1 ProductID, SUM(Quantity) as TotalVendidos 
FROM OrderDETAILS
GROUP BY ProductID
ORDER by TotalVendidos DESC