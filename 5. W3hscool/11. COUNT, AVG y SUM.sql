/*La funcion COUNT() retorna el numero de filas que coinciden con un criterio especifico
Sintaxis
SELECT COUNT(column_name)
FROM table_name
WHERE condition;
La funcion AVG devuelve el valor promerdio de una columna numerica
Sintaxis 
SELECT AVG(column_name)
FROM table_name 
WHERE condition;
La funcion SUM() devuelve la suma total de una columna numerica
Sintaxis 
SELECT SUM(column_name)
FROM table_name
WHERE condition;*/

-- Ejemplo con COUNT()
SELECT COUNT(ProductID)
FROM Products;


-- Ejemplo con AVG()
SELECT AVG(Price)
FROM Products;

-- Ejemplo con SUM()
SELECT SUM(Quantity)
FROM OrderDetails;

SELECT * FROM OrderDetails;
DESCRIBE OrderDetails;
