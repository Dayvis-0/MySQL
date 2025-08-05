/*La palabra clave CROSS JOIN devuelve todos los registros de ambas tablas (tabla1 y tabla2)
Sintaxis
SELECT clumn_name(s)
FROM table1
CROSS JOIN table2
NOTA: CROSS JOIN Potencialmente puede devolver un valor muy grande conjunto de resultados*/

-- Mostramos todo de Clientes y todo de Ordenes
SELECT 
	C.CustomerName,
	O.OrderID
FROM Customers C 
CROSS JOIN Orders O;

/*NOTA: La palabra clave CROSS JOIN devuelve todas las coincidencias registradas en ambas tablas si la otra tabla coincide
o no. Entonces, si hay filas en 'Clientes' que no coinciden en 'Pedidos', o si las hay son filas en 'Pedidos' que no tienen
coincidencias en 'Clientes', esas filas seran listadas tambien.

Si agregas una clausula WHERE (si la tabla1 y la tabla2 tiene una relacion), la CROSS JOIN produce el mismo resultado
que el INNER JOIN clausula*/

SELECT 
	C.CustomerName,
	O.OrderID
FROM Customers C
CROSS JOIN Orders O 
WHERE C.CustomerID = O.CustomerID;







