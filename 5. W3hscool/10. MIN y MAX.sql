/*La funcion MIN() devuelve el valor mas pequeño de la columna seleccionada
Sintaxis
SELECT MIN(column_name)
FROM table_name
WHERE condition;
La funcion MAX() devuelve el valor mas grande de la columna seleccionada
Sintaxis 
SELECT MAX(column_name)
FROM table_name
WHERE condition;*/

SELECT MIN(Price) AS SmallestPrice 
FROM Products;

SELECT MAX(Price) AS LargestPrice
FROM Products;