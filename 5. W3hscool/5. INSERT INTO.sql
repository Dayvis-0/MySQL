/*La declaracion se utiliza para insetar nuevos registros en una tabla
Primera forma -> Especificando tanto los nombres de columna como los valores que se insertaran
Sintaxis de INSERT INTO
INSER INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...)
Segunda forma -> Si agregando valores para todas las columnas de la tabla, no es necesario especificar los nombres de columna
Sin embargo, asegurate de que el orden de los valores estan en el mismo orden que las columnas de la tabla
INSERT INTO table_name
VALUES (value1, value2, value3, ...)*/

SELECT * FROM Customers;

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

DELETE FROM Customers WHERE CustomerID = 92;

INSERT INTO  Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');

SELECT * FROM Customers;

DELETE FROM Customers WHERE CustomerID = 94;

ALTER TABLE Customers AUTO_INCREMENT = 92;

SHOW CREATE TABLE Customers;


