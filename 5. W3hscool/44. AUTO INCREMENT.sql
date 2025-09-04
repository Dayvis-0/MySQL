/*Que es un campo AUTO INCREMENT?
El AUTO INCREMENT permite generar automaticamente un numero unico cuando se inserta un nuevo registro en una tabla 
A menudo, este es el campo clave principal que nos gustaria que se creara automaticamente cada vez que se inserta un nuevo registro

MYSQL utiliza la palabra clave AUTO_INCREMENT para realizar una funcion de incremento automatico
De forma predeterminada, el valor inicial para AUTO_INCREMENT es 1 y se incrementara en 1 por cada nuevo registro*/

-- El siguiente SQL define la columna "Personid" como un campo de clave principal de incremeto automatico en la tabla "Persons"
DROP TABLE Persons;
CREATE TABLE Persons (
	PersonID INT NOT NULL AUTO_INCREMENT,
	LastName VARCHAR(255) NOT NULL,
	FirstName VARCHAR(255),
	Age INT,
	PRIMARY KEY (PersonID)
);

-- Cuando se inserta un valor en la tabla que tiene un AAUTO_INCREMENT, ya no es necesario especificar un valor en el mismo
INSERT INTO Persons (LastName, FirstName, Age)
VALUES ('Atao', 'Dayvis', 21);

SELECT * FROM Persons;

-- Para dejar que la secuencia AUTO_INCREMENT comienza con otro valor, utilice la siguiente declaracion SQL
ALTER TABLE Persons AUTO_INCREMENT = 100;




