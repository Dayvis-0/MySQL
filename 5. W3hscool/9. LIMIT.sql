/*La clusula LIMIT se utiliza para especificar el numero de registros a devolver
La clausula es util en mesas grandes con miles de registros. Devolver una gran cantidad de registros puede afectar el rendimiento
Sintaxis
SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number;*/

SELECT * FROM Customers;
INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country);
VALUES (1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', 12209, 'Germany');