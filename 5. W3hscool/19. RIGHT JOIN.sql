/*La palabra clave RIGHT JOIN devuelve todos los registros de la tabla derecha (tabla 2) y los registros cincidentes (si los hay)
de la tabla izquierda (tabla 1)
Sintaxis
SELECT column_name(s)
FROM table1
RIGHT JOIN table2 ON table1.column_name = table2.column_name*/
-- Mostrar todos los empleados y cualquier pedido que realicen podria haber colocado
SELECT 
	O.OrderID,
	E.LastName,
	E.FirstName
FROM Orders O
RIGHT JOIN Employees E ON O.EmployeeID = E.EmployeeID
ORDER BY O.OrderID;

/*NOTA: La palabra clave RIGHT JOIN devuelve todos los registros de la tabla derecha (Empleados), incluso si no hay coincidencias
en la tabla izquierda (Pedidos)*/