/*La clusula LIMIT se utiliza para especificar el numero de registros a devolver
La clausula es util en mesas grandes con miles de registros. Devolver una gran cantidad de registros puede afectar el rendimiento
Sintaxis
SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number;*/

SELECT * FROM Customers;
INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', 12209, 'Germany');

SELECT * FROM Customers 
LIMIT 3;
/*Como se selecciona los 4-6 registros?
MySQL proporciona una forma de manejar esto: mediante OFFSET
OFFSET -> Se usa junto con LIMIT para saltar un numero especifico de registros antes de comenzar a devolver resultado
En simples palabras -> OFFSET le dice a MySQL cuantos registros debe saltarse desde el principio 
antes de comenzar a dovolver resultdos*/
SELECT * FROM Customers
LIMIT 3 OFFSET 3;

-- Con WHERE
SELECT * FROM Customers
WHERE Country = 'Germany'
LIMIT 3;

-- Con ORDER BY
SELECT * FROM Customers
ORDER BY Country 
LIMIT 3;