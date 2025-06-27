/*El operador BETWEEN selecciona valores que esten dentro de un rango determinado. Los valores pueden se numeros. 
texto o fechas. El operador es inclusivo: se incluyen los valores iniciales
Sintaxis
SELECT column_names(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;*/

SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;

SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

SELECT * FROM Products 
WHERE Price BETWEEN 10 AND 20 
AND CategoryID NOT IN (1,2,3);

SELECT * FROM Products 
WHERE ProductName BETWEEN 'Carnarvon Tiger' AND 'Mozzarella di Giovanni';