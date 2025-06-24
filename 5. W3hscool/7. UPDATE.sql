/*La instruccion se utiliza para modificar los registros existentes en una tabla
Sintaxis
UPDATE table_name
SET column1 = value, column2 = value2, ...
WHERE condition;*/

UPDATE Customers SET ContactName = 'Alfred Schmidt', City = 'Frankfurt' WHERE CustomerID = 1;

SELECT * FROM Customers;
SELECT ContactName, City FROM Customers WHERE ContactName LIKE 'A%'; 

/*Actualiza multiples registros*/
UPDATE Customers SET PostalCode = 00000 WHERE Country = 'Mexico';
SELECT * FROM Customers WHERE Country = 'Mexico';

/*!ADVERTENCIA¡
Tenga cuidado al actualizar registros. Si omites la clausula WHERE. TODOS los registros se actualizaran*/
UPDATE Customers 
SET PostalCode = 00000;