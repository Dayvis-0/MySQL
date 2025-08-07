/*Los operadores ANY y ALL le permiten realizar una comparacion entre un solo valor de columna y un rango de otros valores
El operador ANY:
- Devuelve un valor booleano como resultado
- Devuelve VERDADERO si CUALQUIERA de los valores de la subconsulta comple la condicion
ANY significa que la condicion sera verdadera si la operacion es verdadera para cualquiera de los valores en el rango
Sintaxis:
SELECT column_name(s)
FROM table_name
WHERE column_name operator ANY (
	SELECT column_name
	FROM table_name
	WHERE condition)
NOTA: El operador debe ser una comparacion estandar (=, <>, !=, >, >=, < o <=)

EL operador ALL:
- Devuelve un valor booleano como resultado
- Devuelve VERDADERO si TODOS los valores de la subconsulta cumplen la condicion
ALL significa que la condicion sera verdadera solo si la operacion es verdadera para todos los valores en el rango
Sintaxis:
SELECT ALL column_name(s)
FROM table_name
WHERE condition
Sintaxis con WHERE o HAVING
SELECT column_name(s)
FROM table_name
WHERE column_name operator ALL (
	SELECT column_name
	FROM table_name
	WHERE condition)
NOTA: El operador debe ser una comparacion estandar (=, <>, !=, >, >=, < o <=)*/

/*La siguiente declaracion SQL enumera el nombre del producto si encuentra que CUALQUIER registro en la tabla OrderDetails tiene una
cantidad igual a 10 (esto devuelve VERDADERO porque la columna Cantidad tiene algunos valores de 10)*/

SELECT ProductName 
FROM Products 
WHERE ProductID = ANY ( 
	SELECT ProductID
	FROM OrderDetails 
	WHERE Quantity = 10);

/*La siguiente de claracion SQL enumera el nombre del producto si encuentra que CUALQUIER registro en la tabla OrderDetails tiene una
cantidad mayor a 99 (esto devolvera VERDADERO porque la columna Cantidad tiene algunos valores mayores a 99)*/
SELECT ProductName 
FROM Products 
WHERE ProductID = ANY (
	SELECT ProductID
	FROM OrderDetails 
	WHERE Quantity > 99);

/*La siguiente de claracion SQL enumera el nombre del producto si encuentra que CUALQUIER registro en la tabla OrderDetails tiene una
cantidad mayor a 1000 (esto devolvera FALSO porque la columna Cantidad no tiene algunos valores mayores a 1000)*/
SELECT ProductName 
FROM Products 
WHERE ProductID = ANY (
	SELECT ProductID
	FROM OrderDetails
	WHERE Quantity > 1000);

-- La siguiente declaracion SQL enumera TODOS los nombres de productos
SELECT ALL ProductName 
FROM Products 
WHERE TRUE;

/*La siguiente de claracion SQL enumera el nombre del producto si TODOS los registro en la tabla OrderDetails tiene una cantidad 
igual a 10. Por supuesto, esto devolvera FALSE porque la columna Cantidad tiene muchos valores diferente (no solo el valor de 10)*/
SELECT ProductName 
FROM Products 
WHERE ProductID = ALL (
	SELECT ProductID
	FROM OrderDetails
	WHERE Quantity = 10);






