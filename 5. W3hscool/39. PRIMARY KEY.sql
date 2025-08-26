/*La restriccion PRIMARY KEY identifica de forma unica cada registro en una tabla.
Las claves primarias deben contener valores unicos y no pueden contener valores NULL.
Una tabla puede tener solo UNA clave primaria: y en la tabla, esta clave primaria puede constar de una  o varias columnas*/ 
DROP TABLE Persons;
-- El siguiente SQL crea un PRIMARY KEY en la columna ID cuando se crea la tabla "Persons"
CREATE TABLE Persons (
	ID INT NOT NULL,
	LastName VARCHAR(255) NOT NULL,
	FirstName VARCHAR(255),
	Age INT,
	PRIMARY KEY (ID)
); 

/*Para permitir la donominacion de una restriccion PRIMARY KEY, y para definir una restriccion PRIMARY KEY en varias 
columnas, utilice la siguiente sintaxis SQL*/
CREATE TABLE Persons (
	ID INT NOT NULL,
	LastName VARCHAR(255) NOT NULL,
	FirstName VARCHAR(255),
	Age INT,
	CONSTRAINT PK_person PRIMARY KEY (ID, LastName)
);

-- PRIMARY KEY en ALTER TABLE
CREATE TABLE Persons (
	ID INT NOT NULL,
	LastName VARCHAR(255) NOT NULL,
	FirstName VARCHAR(255),
	Age INT
); 
DESCRIBE Persons;
-- Para crear una restriccion PRIMARY KEY en la columna ID cuando la tabla ya esta creada, utilice la siguiente sintaxis SQL:
ALTER TABLE Persons 
ADD PRIMARY KEY (ID);

/* Para permitir la denominacion de una restriccion PRIMARY KEY, y para definir una restriccion PRIMARY KEY 
en varias columnas, utilice la siguiente sintaxis SQL*/
ALTER TABLE Persons
ADD CONSTRAINT PK_person PRIMARY KEY (ID, LasteName);
/*NOTA: Si usas ALTER TABLE para agrupar una clave primaria, la(s) columna(s) de clave primaria deben de ser declarados
como NOT NULL (cuando se creo la tabla por primera vez)*/

-- Eliminar una restriccion PRIMARY KEY
ALTER TABLE Persons 
DROP PRIMARY KEY;












