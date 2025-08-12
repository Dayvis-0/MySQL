/*La declaracion case pasa por condiciones  y devuelve un valor cuando se cumple la primera condicion met(como una declaracion
if-then-else). Entonces, una vez que una condicion es verdadera, se detendra leyendoy devolviendo el resultado. Si no hay 
condiciones verdaderas, regresa el valor en la clausula ELSE.
Si no hay ELSE parte y ninguna condicion es verdadera, devuelve NULL.
Sintaxis:
CASE 
	WHEN condition1 THEN result1
	WHEN condition2 THEN result2
	WHEN condition3 THEN result3
	ELSE resutl
END;*/

-- El siguiente SQL recorre las condiciones y devuelve un valor cuando se cumple la primera condicion:
SELECT OrderID, Quantity,
CASE 
	WHEN Quantity > 30 THEN 'The quantity is greater than 30'
	WHEN Quantity = 30 THEN 'The quantity is 30'
	ELSE 'The quantity is under 30'
END AS QuantityText
FROM OrderDetails;

-- El siguiente SQL ordenara a los clientes por ciudad. Sin embargo, si la ciudad es NULL, ordene por pais
SELECT CustomerName, City, Country
FROM Customers
ORDER BY (
	CASE 
		WHEN City IS NULL THEN Country
		ELSE City
	END
);


SELECT * FROM Customers;
