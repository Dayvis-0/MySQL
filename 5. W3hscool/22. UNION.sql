/*El operador INION se utiliza para combinar el conjunto de resultados de dos o mas SELECT declaraciones
El operador UNION elimina automaticamente filas duplicadas del conjunto de resultados
Requisitos para UNION:
- Cada declaracion SELECT dentro de UNION debe tener el mismo numero de columnas
- Las columnas tambien deben tener tipos de datos similares
- Las columnas en cada declaracion SELECT tambien debe estar en el mismo orden
Sintaxis:
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2
NOTA: Los nombres de las columnas en el conjunto de resultados suelen ser iguales de las columnas en la primera declaracion SELECT */

-- La siguiente declaracion devuelve las ciudades(solo valores distintos) tanto de la tabla "Clientes" como de la tabla "Proveedores"
SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;
/*NOTA: Si algunos clientes o proveedores tienen la misma ciudad solo sera litado una vez, porque UNION selecciona solo valores 
distintos. Usa UNION ALL para seleccionar tambien valores duplicados.*/

-- La siguiente declaracion SQL devuelve las ciudades (valores duplicados tambien) tanto de la tabla "Clientes" como de la tabla "Proveedores"
SELECT City FROM Customers;
SELECT City FROM Suppliers;

-- La siguiente declaracion SQL devuelve las ciudades alemanas (solo valores distintos) tanto de la tabla "Clientes" como de la tabla "Proveedores" 
SELECT City, Country FROM Customers
WHERE Country = 'Germany'
UNION
SELECT City, Country FROM Suppliers 
WHERE Country = 'Germany'
ORDER BY City;


-- La siguiente declaracion SQL enumera todos los clientes y proveedores
SELECT 'Customers' AS Type, ContactName, City, Country 
FROM Customers 
UNION
SELECT 'Supplier', ContactName, City, Country 
FROM Suppliers;



