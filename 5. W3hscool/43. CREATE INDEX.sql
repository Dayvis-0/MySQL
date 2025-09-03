/*La declaracion CREATE INDEX se utiliza para crear indices en tablas.
Los indice se utilizan para recuperar datos de la base de datos mas rapidamente que de otro modo. Los usuarios no
pueden ver los indices, solo se utilizan para acelerar busquedas/cosultas

Nota: Actualizar una tabla con indices lleva mas tiempo que actualizar una tabla sin ellos (porque los indices tambien
necesitan una actualizacion). Por lo tanto, cree indices unicamente en columnas que buscaran con frecuencia

Sintaxis de CREATE INDEX:
CREATE INDEX index_name
ON table_name (column1, column2, ...);

Sintaxis de CREATE INDEX UNIQUE:
CREATE INDEX UNIQUE index_name 
ON table_name (column1, column1, ...)*/
DROP TABLE Persons;
-- La siguiente declaracion SQL crea un indice llamado "idx_lastname" en la columna "Apellido" de la tabla "Persons"
CREATE INDEX idx_lastname
ON Persons (LastName);

SELECT * FROM Persons;

INSERT INTO Persons (ID, LastName, FirstName, Age)
VALUES (1, 'Atao', 'Dayvis', 19);

-- Ver los indices
SHOW INDEX FROM Persons;

-- Si desea crear un inidice en una combinacion de columnas, pueda enumerar los nombres de las columnas entre 
-- parentesis separador por comas
CREATE INDEX idx_name
ON Persons (LastName, FirstName);

/*declaracion DROP INDEX
La declaracion DROP INDEX se utiliza para eliminar un indice en una tabal: */
ALTER TABLE table_name
DROP INDEX indeX_name;


