/*El operador UNION ALL se utiliza para combinar el conjunto de resultados de dos o mas SELECT declaraciones
El operador UNION ALL incluye todas las filas de cada declaracion, incluidos duplicados
Requisitos para UNION ALL:
- Cada declaracion SELECT dentro de UNION debe tener el mismo numero de columnas
- Las columnas tambien deben tener tipos de datos similares
- Las columnas en cada declaracion SELECT tambien debe estar en el mismo orden
Sintaxis UNION ALL:
Mientras que el operador UNION elimina valores duplicados de forma predeterminada, UNION ALL incluye valores duplicados
El operador UNION selecciona solo valores distintos de forma predeterminada. Permitir valores duplicados, utilizar UNION ALL
SELECT column_name(s) FROM table1
UNION ALL
SELECT column_name(s) FROM table2
NOTA: Los nombres de las columnas en el conjunto de resultados suelen ser iguales a los nombres de las columnas en la primer declaracion SELECT*/

-- La siguiente declaracion SQL devuelve las ciudades (valore duplicados tambien) tanto de la tabla "Clientes" como de la tabla "Proveedores"
SELECT City FROM Customers
UNION ALL
SELECT City FROM Suppliers
ORDER BY City;

-- La siguiente declaracion SQL devuelve las ciudades alemanas (tambien valores duplicados) de tanto la tabla "Clientes" como de la tabla "Proveedores" 
SELECT City, Country FROM Customers
WHERE Country = 'Germany'
UNION ALL
SELECT City, Country FROM Suppliers 
WHERE Country = 'Germany'
ORDER BY City;