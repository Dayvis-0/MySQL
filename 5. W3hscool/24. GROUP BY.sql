/*La declaracion GROUP BY agrupa las filas que tienen los mismos valores en el resumen filas, como "encuentra el numero de clientes en cada pais"
La declaracion GROUP BY se utiliza a menudo con funciones agregadas (COUNT(), MAX(), MIN(), SUM(), AVG()) para el conjunto
de resultados por una o mas columnas
Sintaxis GROUP BY:
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s)*/

-- La siguiente declaracion SQL enumera el numero de clientes en cada pais
SELECT COUNT(CustomerID), Country
FROM Customers 
GROUP BY Country;

SELECT * 
FROM Customers;

-- La siguiente declaracino SQL enumera el numero de clientes en cada pais, ordenado de alto a bajo
SELECT COUNT(CustomerID), Country
FROM Customers 
GROUP BY Country 
ORDER BY COUNT(CustomerID) DESC;			

-- La siguiente declaracion SQl enumera la cantidad de pedidos enviados por cada transportista
SELECT 
	S.ShipperName, 
	COUNT(O.OrderID) AS NumberOfOrders	
FROM Orders O
LEFT JOIN Shippers S ON O.ShipperID = S.ShipperID
GROUP BY S.ShipperName;

