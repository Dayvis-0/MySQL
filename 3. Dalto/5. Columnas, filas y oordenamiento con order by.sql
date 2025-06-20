SHOW TABLES;

SELECT * FROM Employees;
SELECT LastName FROM Employees;
SELECT LastName AS apellido FROM Employees;
SELECT FirstName AS nombre, LastName AS apellido FROM Employees;

SELECT * FROM Products;
SELECT Price FROM Products;
SELECT Price*2 AS precio_doble FROM Products;

SELECT * FROM Products;	
SELECT * FROM Products ORDER BY ProductName ASC;
SELECT * FROM Products ORDER BY ProductName DESC;

SELECT * FROM Products;
SHOW CREATE TABLE Products;
INSERT INTO Products () VALUES ();
SELECT * FROM Products ORDER BY ProductName; /*Viene por defecto con asc*/
SELECT * FROM Products ORDER BY ProductName DESC; 
/* Jerarquiav				Orden asc 		Orden desc
NULL						primero			cuarto
NUMEROS						segundo			tercero
CARACTARES ESPECIALES		tercero			segundo
LETRAS						cuarto			primero*/
SELECT * FROM Products;
/*SELECT * FROM Products ORDER BY ProductName ASC NULLS LAST;*/
SELECT * FROM Products ORDER BY ProductName IS NULL, ProductName ASC;
/*Como funciona? 
 ProductName IS NULL devuelve 1 para NULL y 0 para no nulos
 Entonces, ordena primero los que no son NULL 0, y luego NULL 1*/
SELECT * FROM Products ORDER BY ProductName IS NOT NULL, ProductName ASC;	
INSERT INTO Products (SupplierID); 

VALUES (8), (9), (4), (14);
SELECT * FROM Products ORDER BY ProductName, SupplierID ASC;
SELECT * FROM Products ORDER BY ProductName, SupplierID DESC;




