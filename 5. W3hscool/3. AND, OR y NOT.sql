/*La clausula WHERE se puede combinar con AND, OR y NOT operadores
El AND muestra un registro si todas las condiciones que estan separadas por AND son verdaderas
El OR muestra un registro si alguna de las condiciones que estan separadas por OR son verdaderas
Sintaxis de AND
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...*/

SELECT * FROM Customers WHERE Country = 'Germany' AND City = 'Berlin';

/*Sintaxis de OR
SELECT column1, column2
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...*/

SELECT * FROM Customers WHERE City = 'Berlin' OR City = 'Stuttgart';
SELECT * FROM Customers WHERE Country = 'Germany' OR Country = 'Spain';

/*Sintaxis de NOT
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;*/

SELECT * FROM Customers WHERE NOT Country = 'Germany';

/* Combinando AND, OR y NOT*/
SELECT * FROM Customers WHERE Country = 'Germany' AND (City = 'Berlin' OR City = 'Stuttgart');
SELECT * FROM Customers WHERE NOT Country = 'Germany' AND NOT Country = 'USA';