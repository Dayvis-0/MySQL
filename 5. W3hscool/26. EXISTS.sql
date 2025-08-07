/*El operador EXISTS se utiliza para probar la existencia de cualquier registro en una subconsulta, devuelve
VERDADERO si la subconsulta devuelve uno o mas registros
Sintaxis:
SELECT column_name(s)
FROM table_name
WHERE EXISTS
(SELECT column_name FROM table_name WHERE condition)*/

-- La siguiente declaracion SQL devuelve VERDADERO y enumera los proveedores con un precio de producto inferior a 20
SELECT S.SupplierName
FROM Suppliers S
WHERE EXISTS (
	SELECT ProductName
	FROM Products P
	WHERE P.SupplierID = S.SupplierID AND Price < 20);

-- La siguiente declaracion SQL devuelve VERDADERO y enumera los proveedores con el precio del producto igual a 22
SELECT S.SupplierName 
FROM Suppliers S
WHERE EXISTS(
	SELECT ProductName 
	FROM Products P
	WHERE P.SupplierID = S.SupplierID AND Price = 22);

-- 

