/*La restriccion DEFAULT se utiliza para establecer un valor predeterminado pra una columna
El valor predeterminado se agregara a todos los registros nuevos, si no se especifica ningun otro valor*/

-- El siguiente SQL establece un DEFAULT valor de la columna "Ciudad" cuando se crea la tabla "Persons":
DROP TABLE Persons;
CREATE TABLE Persons (
	ID INT NOT NULL,
	LastName VARCHAR(255) NOT NULL,
	FirstName VARCHAR(255),
	Age INT,
	City VARCHAR(255) DEFAULT 'Sandnes'
);

SELECT * FROM Persons;

INSERT INTO Persons (ID, LastName, FirstName, Age)
VALUES (1, 'Atao', 'Dayvis', 19);

-- La restriccion DEFAULT tambien se puede utilizar para insertar valores del sistema, utilizando funciones como: CURRENT_DATE()
CREATE TABLE Orders (
	ID INT NOT NULL,
	OrderNumber INT NOT NULL,
	OrderDate DATE DEFAULT CURRENT_DATE()
);	

/*DEFAULT en ALTER TABLE
Para crear una restriccion DEFAULT en la columna "Ciudad" cuando la tabla ya este creada, utilice e siguiente SQL:*/
ALTER TABLE Persons 
ALTER City SET DEFAULT 'Sandnes';

/*DROP en una restriccion DEFAULT
Para dejar caer una restriccion DEFAULT, utilice el siguiente SQl:*/
ALTER TABLE Persons
ALTER City DROP DEFAULT;

 
 
 
 
 
 
 
 
 
 
 
 
 
 