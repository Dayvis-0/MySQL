/*La declaracion INSERT INTO SELECT copia datos de una tabla y lo inserta en otra tabla
La declaracion INSERT INTO SELECT requiere que los tipos de datos en las tablas de origen y destino coinciden
NOTA: Los registros existentes en la tabla de destino no se ven afectados
Sintaxis
Copie todas las columnas de una tabla a otra tabla:
INSERT INTO table2
SELECT * FROM table1
WHERE condition;
Copie solo algunas columnas de una tabla a otra tabla:
INSERT INTO table2 (column1, column2, column3, ...)
SELECT column1, column2, column3, ...
FROM table1
WHERE condition;*/

-- La siguiente declaracion SQL	copia "Proveedores" en "Clientes" (las columnas que no estan llenos de datos, contendran NULL:
INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country
FROM Suppliers;

SELECT *
FROM Customers;
SELECT * 
FROM Suppliers;

-- La siguiente declaracion SQL	copia "Proveedores" en "Clientes" (completar toda la columna):
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT SupplierName, ContactName, Address, City, PostalCode, Country 
FROM Suppliers;

-- La siguiente declaración SQL copia únicamente a los proveedores alemanes en "Clientes":

INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country 
FROM Suppliers
WHERE Country='Germany';
