/*Las restricciones SQL se utilizan para especificar reglas para los datos de una tabla.
Crear restricciones
Las restricciones se pueden especificar cuando la tabla se crea con la declaracion CREATE TABLE, o despues de crear 
la tabla con la declaracion ALTER TABLE
Sintaxis:
CREATE TABLE table_name (
	column1 datatype constraint,
	column2 datatype constraint,
	column3 datatype constraint,
	...
);
Las restricciones se utilizan para limitar el tipo de datos que pueden ingresar a una tabla. Esto garantiza la precision y 
confiabilidad de los datos de la tabla. Si hay alguna violacion entre la restriccion y la accion de datos, la accion es abortada
Las restricciones pueden ser a nivel columna o a nivel de tabla. Restricciones a nivel de columna se aplican a una columna
y las restricciones a nivel de tabla se aplican a toda la tabla. Las siguientes restricciones se utilizan comunmente en SQL:
- NOT NULL -> Garantiza que una columna no pueda tener un valor NULL.
- UNIQUE -> Garantiza que todos los valores de una columna sean diferentes
- PRIMARY KEY -> Una combinacion de a NOT NULL y UNIQUE. Identifica de forma unica cada fila de una tabla
- FOREIGN KEY -> Previene acciones que destruiran los vinculos entre tablas
- CHECK -> Garantiza que los valores de una columna satisfacen una condicion especifica
- DEFAULT -> Establece un valor predeterminado para una columna si no hay valor se especifica
- CREATE INDEX -> Se utiliza para crear y recuperar datos de la base de datos muy rapidamente*/

SELECT * FROM Employees;

DELIMITER //
CREATE TRIGGER trg_check_birth
BEFORE INSERT ON Employees
FOR EACH ROW
BEGIN
    IF NEW.BirthDate >= CURDATE() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La fecha de nacimiento debe ser anterior a hoy';
    END IF;
END;
//
DELIMITER ;


CREATE TABLE Employees (
	EmployeeID INTEGER PRIMARY KEY AUTO_INCREMENT,
	LastName VARCHAR(15) NOT NULL,
	FirstName VARCHAR(15) NOT NULL,
	BirthDate DATETIME,
	Photo VARCHAR(25) DEFAULT "nophoto.jpg",
	Notes VARCHAR(1024)
);









