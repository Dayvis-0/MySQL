/*Restriccion NOT NULL de MYSQL
De forma predeterminada, una columna puede contener valores NULL
La restriccion NOT NULL obliga a una columna a NO aceptar valores NULL -> Este obliga a que un campo siempre contenga un 
valor, lo que significa que no puede insertar un nuevo registro ni actualizar un registro sin agregar un valor a este campo*/

--  NOT NULL en CRATE TABLLE -> El siguiente SQL garantiza que "ID", "LastName" y Columnas "FirstName" NO aceptara 
-- valores NULL cuando se cee la tabla 
CREATE TABLE Persons(
	ID INT NOT NULL,
	LastName VARCHAR(255) NOT NULL,
	FirstName VARCHAR(255) NOT NULL,
	Age int
);

-- NOT NULL en ALTER TABLE
-- Para crear una restriccion NOT NULL en la columna "Age" cuando la tabla 
ALTER TABLE Persons 
MODIFY Age INT NOT NULL;

