/*La declaracion ALTER TABLE se utiliza para agregar, eliminar o modificar columnas en una tabla existente.
Se utiliza para agregar y eliminar varias resstricciones en una tabla existente
Sintaxis para agregar una columna en una tabla:
ALTER TABLE table_name
ADD column_name datatype;*/

SELECT * FROM Customers;

-- El siguinete SQl agrega una columna "Email" a la tabla "Customers":
ALTER TABLE Customers 
ADD Email VARCHAR(255);

/*ALTER TABLE - Eliminar columna. Para eliminar una columna de una tabla, utilice la siguiente sintaxis (tenga en cuenta 
que algunas sistemas de base de datos no permiten eliminar una columna)
Sintaxis:
ALTER TABLE table_name
DROP COLUMN column_name;*/

-- El siguiente SQL elimina la columna "Email" de la tabla "Customers":
ALTER TABLE Customers 
DROP COLUMN Email;

/*ALTER TABLE - Modificar columna. Para cambiar el tipo de datos de una columna en una tabla, utilice la siguiente sintaxis:
ALTER TABLE table_name
MODIFY COLUMN column_name datatype;*/
