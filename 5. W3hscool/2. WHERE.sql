/*Se utiliza para filtrar registros
Sintaxis de where
SELECT column1, column2 ...
FROM table_name
WHERE condition*/

SELECT * FROM Customers WHERE Country = "Mexico";
/*Operadores en la clausula where*/
SELECT * FROM Products WHERE Price = 10;
SELECT * FROM Products WHERE Price > 100; /* >= */
SELECT * FROM Products WHERE Price < 20; /* <= */
SELECT * FROM Products WHERE Price <> 10; /*Diferente*/
SELECT * FROM Products WHERE Price BETWEEN 50 AND 60; /*Entre*/
/*Sintaxis de like
SELECT * FROM tabla_name WHERE column LIKE 'patron'*/
SELECT * FROM Customers WHERE City LIKE 's%'; /*empiezan con s*/
SELECT * FROM Customers WHERE City LIKE '%s'; /*terminan con s*/
SELECT * FROM Customers WHERE CustomerName LIKE '%or%'; /*que contengan or*/
SELECT * FROM Customers WHERE CustomerName LIKE '_a%'; /*que tienen a 'a' como segundo caracter*/
SELECT * FROM Customers WHERE Country NOT LIKE '%we%';