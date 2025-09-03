/*La restriccion CHECK se utiliza para limitar el rango de valores que se puede colocar en una columna
Si defines a la restriccio CHECK en una columna permitira solo ciertos valores para esta columna
Si defines a la restriccio CHECK en una tabla puede delimitar*/

/* El siguiente SQL crea una restriccion CHECK en la columna "Edad" cuando se crea la tabla "Personas". la 
restriccion CHECK garantiza que la edad de una persona debe ser de 18 años o mas: */
DROP TABLE IF EXISTS Persons;
CREATE TABLE Persons (
	ID INT NOT NULL,
	LastName VARCHAR(255) NOT NULL,
	FirstName VARCHAR(255),
	Age INT,
	CHECK (Age >= 18)
);

SELECT * FROM Customers;

INSERT INTO Persons (ID, LastName, FirstName, Age)
VALUES (1, 'Atao Mallqui', 'Dayvis', 17); -- Esto lanza un error 

/*Para permitir la denominacion de una restriccion CHECK, y para definir una restriccion CHECK en varias columnas:*/
CREATE TABLE Persons (
	ID INT NOT NULL,
	LastName VARCHAR(255) NOT NULL,
	FirstName VARCHAR(255),
	Age INT,
	City VARCHAR(255),
	CONSTRAINT CHK_Person CHECK (Age >= 18 AND City = 'Sandnes')
); 

INSERT INTO Persons (ID, LastName, FirstName, Age, City)
VALUES (1, 'Atao Mallqui', 'Dayvis', 1, 'Sandnes');

SELECT * FROM Persons;

/*CHECK en ALTER TABLE
Para crear una restriccion CHECK en la columna "Edad" cuando la tabla ya esta creada:*/
ALTER TABLE	Persons 
ADD CHECK (Age >= 18);

-- Para permitir la denominacion de una restriccion CHECK, y para definir una restriccion CHECK en varias columnas:
ALTER TABLE Persons 
ADD CONSTRAINT CHK_PersonAge CHECK (Age >= 18 AND City = 'Sandnes');

/*DROP en una restriccion CHECK
Para dejar caer una restriccion CHECK:*/
ALTER TABLE Persons 
DROP CHECK CHK_PersonAge;







