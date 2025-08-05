/*La palabra clave LEFT JOIN devuelve todos los registros de la tabla izquierda (tabla1) y los registros coincidentes (si lo hay) 
de la tabla derecha(tabla2)
Sintaxis
SELECT column_name(s)
FROM table1
LEFT JOIN table 2 ON table1.column_name = table2.column_name*/

-- Mostrara a todos los clientes y cualquier pedido que puedan tener
SELECT * FROM Customers;
SELECT * FROM Orders;

SELECT 
	C.CustomerName ,
	O.OrderID
FROM Customers C
LEFT JOIN Orders O ON C.CustomerID = O.CustomerID
ORDER BY C.CustomerName;

/*NOTA: La palabra clave LEFT JOIN devuelve todos los registros de la tabla izquierda (Customers), incluso si no hay cincidencias
en la tabla derecha (Orders)*/