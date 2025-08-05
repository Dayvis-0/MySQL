/*La palabra clave INNER JOIN selecciona registros que tienen varios  valores coincidentes en ambas tablas
Sintaxis
SELECT column_names(s)
FROM table1
INNER JOIN table2 
ON table.column_name = table2.column_name;*/

/*Todos los pedidos con informacion del cliente
Nota: La palabra clave INNER JOIN selecciona todas las filas de ambas filas de ambas tablas siempre que haya coincidencia
entre las columnas. Si hay registros en la tabla de "Pedidos" que no tienen coincidencias en "Clientes", estos pedidos no se mostraran*/
SELECT Orders.OrderID, Customers.CustomerName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

