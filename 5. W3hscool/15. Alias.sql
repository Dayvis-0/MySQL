/*Las alias se utilizan para darle a una tabla, o a una columna de una tabla, un nombre temporal
Sintaxis
-SELECT column_name AS alias_name
FROM table_name
-SELECT column_name(as)
FROM table_name AS alias_name*/

SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers;

SELECT CustomerName AS Customer, ContactName AS 'Contact Person'
FROM Customers;

-- La siguiente declaracion crea un alias llamado 'Direccion' que combina cuatro columnas (Direcccion, Codigo Potal, Ciudad, Pais)
SELECT CustomerName, CONCAT_WS(', ', Address, PostalCode, City, Country) AS Address
FROM Customers;

-- Ejemplo de alias para tablas

SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerName = 'Around the Horn' AND c.CustomerID = o.CustomerID; 

SELECT Orders.OrderID, Orders.OrderDate, Customers.CustomerName
FROM Customers, Orders
WHERE Customers.CustomerName = 'Around the Horn' AND Customers.CustomerID = Orders.CustomerID;

SELECT * FROM Customers;