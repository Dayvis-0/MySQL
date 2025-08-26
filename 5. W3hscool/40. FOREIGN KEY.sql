/*La restriccion FOREIGN KEY se utiliza para evitar acciones que destruirian los enlaces entre tablas.
Una FOREIGN KEY es un campo (o coleccion de campos) en una tabla, que se refiere a el PRIMARY KEY en otra mesa.
La tabla con la llave foranea y la tabla con la calve primaria se llama tabla referenciada o principal*/

-- El siguiente SQl crea un FOREIGN KEY en la columna "PersonID" cuando se crea la tabla "Orders"
CREATE TABLE Orders (
	OrderID INT NOT NULL,
	OrderNumber INT NOT NULL,
	PersonID INT,
	PRIMARY KEY (OrderID),
	FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);

/*Para permitir la denominacion de una restriccion FOREIGN KEY, y para definir una restriccion FOREIGN KEY en varias
columnas, utilice la siguiente sintaxis SQL*/
CREATE TABLE Orders (
	OrderID INT NOT NULL,
	OrderNumber INT NOT NULL,
	PersonID INT,
	PRIMARY KEY (OrderID),
	CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID) 
	REFERENCES Persons(PersonID)
); 

/*FOREIGN KEY en ALTER TABLE 
Para crear una restriccion FOREIGN KEY en la columna "PersonID" cuando la tabla "Pedidos" ya esta creada, utilice la siguiente sintaxis SQL:*/
ALTER TABLE Persons 
ADD FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);

/*Para permitir la denominacion de una restriccion FOREIGN KEY, y para definir una restriccion FOREIGN KEY en varias
columnas, utilice la siguiente sintaxis SQL*/
ALTER TABLE Persons
ADD CONSTRAINT FK_PersonOrder
FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);

/*DROP en una declaracion FOREIGN KEY 
Para dejar caer una restriccion FOREIGN KEY, utilice la siguiente sintaxis SQL:*/
ALTER TABLE Orders 
DROP FOREIGN KEY FK_PersonOrder;










