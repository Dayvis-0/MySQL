/*La restriccion UNIQUE garanntiza que todos los valores de una coolumna sean diferentes
Ambos UNIQUE y PWIMARY KEY proporcionan una garantia de unicidad para una columna o un conjunto de columnas
A la restriccion PRIMARY KEY tiene automaticamente una UNIQUE
Sin embargo, puedes tener muchas restricciones UNIQUE por tabla, pero solo una restriccion PRIMARY KEY por tabla*/

DROP TABLE Persons;

-- El siguiente SQL crea una restriccion UNIQUE en laa columna "ID" cuando se crea la tabla "Persons"
CREATE TABLE Persons (
	ID INT NOT NULL,
	LastName VARCHAR(255) NOT NULL,
	FirstName VARCHAR(255) NOT NULL,
	Age INT,
	UNIQUE (ID)
);

-- Para nombrar una restriccion UNIQUE, y definir una restriccion UNIQUE en varias columnas:
CREATE TABLE Persons (
	ID INT NOT NULL,
	LastName VARCHAR(255) NOT NULL, 
	FirstName VARCHAR(255),
	Age INT,
	CONSTRAINT UC_Person UNIQUE (ID, LastName)
);

-- Restriccion UNIQUE en ALTER TABLE

-- Para crear una restriccion UNIQUE
ALTER TABLE Persons 
ADD UNIQUE (ID);

-- Para nombrar una restriccion UNIQUE, y definir una restriccion UNIQUE en varias columnas
ALTER TABLE Persons 
ADD CONSTRAINT UC_Person UNIQUE (ID, LastName)

-- Eliminar una restriccion UNIQUE

-- Para dejar caer una restriccion UNIQUE 
ALTER TABLE Persons
DROP INDEX UC_Person; 














