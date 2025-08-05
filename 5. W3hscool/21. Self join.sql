/*Un self join es una union regular, pero la tabla esta unida consigo misma
Sintaxis de self join
SELECT column_name(s)
FROM table1 T1, table2 T2
WHERE condition;
T1 y T2 son diferentes alias de tabla para la misma tabla*/

-- La siguiennte declaracion coincide con clientes que son de la misma ciudad
SELECT 
	A.CustomerName AS CustomerName1,
	B.CustomerName AS CustomerName1,
	A.City 
FROM Customers A, Customers B
WHERE A.CustomerID  <> B.CustomerID AND A.City = B.City  
ORDER BY A.City;	