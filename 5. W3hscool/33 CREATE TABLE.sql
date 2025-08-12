/*La declaracion CREATE TABLE se utiliza para crear una nueva tabla en una base de datos
Sintaxis:
CREATE TABLE table_name(
	column1 datatype,
	column1 datatype,
	column1 datatype
	...
);*/

CREATE DATABASE testDB;

CREATE TABLE Persons (
	PersonID int,
	LastName VARCHAR(255),
	FirstName VARCHAR(255),
	Address VARCHAR(255),
	City VARCHAR(255)
);

/*Tambien se puede crear una copia de una tabla existente utilizando CREATE TABLE.
La nueva tabla obtiene las mismas definiciones de columnas. Se pueden seleccionar todas las columnas o columnas especificas
Sintaxis:
CREATE TABLE new_table_name AS 
	SELECT column1, column2, ...
	FROM existing_table_name
	WHERE ...;*/

-- El siguiente SQL crea una nueva tabla llamada "TestTables" (que es una copia de la tabla "Clientes")

CREATE TABLE TestTable AS 
	SELECT LastName, FirstName
	FROM Persons;








