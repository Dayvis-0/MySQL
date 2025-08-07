/*La clausula HAVING se agrego a SQL porque la palabra clave WHERE no puede ser utilizado con funciones agregadas
Sintaxis:
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_names(s)*/

-- La siguiente declaracion SQL enumera el numero de clientes en cada pais. Incluye unicamente paises con mas de 5 clientes
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country 
HAVING COUNT(CustomerID) > 5;

-- La siguiente declaracion SQL enumera el numero de clientes en cada pais, ordenando de mayor a menor (solo incluye paises 
-- con mas de 5 clientes)
SELECT COUNT(CustomerId), Country
FROM Customers 
GROUP BY Country 
HAVING COUNT(CustomerID ) > 5
ORDER BY COUNT(CustomerID) DESC;

-- La siguiente declaracion SQL enumera los empleados que se han registrado mas de 10 pedidos
SELECT 
	E.LastName,
	COUNT(O.OrderID) AS NumberOfOrders	
FROM Orders O
INNER JOIN Employees E ON O.EmployeeID = E.EmployeeID 
GROUP BY LastName
HAVING COUNT(O.OrderID) > 10;

-- La siguiente declaracion SQL enumera si los empleados "Davolio" o "Fuller" se han registrado mas de 25 pedidos
SELECT 
	E.LastName,
	COUNT(O.OrderID) AS NumbersOfOrders
FROM Orders O 
iNNER JOIN Employees E ON O.EmployeeID = E.EmployeeID 
WHERE LastName = 'Davolio' OR LastName = 'Fuller'
GROUP BY LastName 
HAVING COUNT(O.OrderID) > 25;		










