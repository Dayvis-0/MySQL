/*Sintaxis de select
SELECT column1, column2, ...
FROM table_name;*/

SELECT * FROM Customers;

SELECT CustomerName, City, Country FROM Customers;
SELECT Country FROM Customers; /*Devuelve todo de Country de Customers*/
/*Sintaxis de select distinct
SELECT DISTINCT column1, column1 ...
FROM table_name;*/
SELECT DISTINCT Country FROM Customers; /*Devuelve solo los valores no repetidos de Country de Customers*/
