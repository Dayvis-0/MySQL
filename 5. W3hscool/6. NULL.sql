/*Un campo con un valor NULL es un campo sin valor
un valor NULL es diferente de un valor cero o un campo que contiene espacios, es aquel que 
se ha dejado en blanco durante la creacion de discos
Sintaxis de IS NULL
SELECT column_names
FROM table_name
WHERE column_names IS NULL
Sintaxis de NOT NULL
SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL*/

SELECT CustomerName, ContactName, Address FROM Customers WHERE Address IS NULL;
SELECT CustomerName, ContactName, Address FROM Customers WHERE Address IS NOT NULL;