/*El operador LIKE() se utiliza en una clausula WHERE para buscar un patron especifico en una columna
Hay dos comodines que se utilizan a menudo junto con el operador LIKE: 
- El signo porcentual (%) representa cero, uno o varios caracteres
- El signo de subrayado (_) representa un solo caracter
Sintaxis
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;
Tambien puedes combinar cualquier numero de condiciones usando los operadores AND u OR */

-- Ejemplo nombres que comiencen con a
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

-- Ejemplo nombres que terminen con a
SELECT * FROM Customers
WHERE CustomerName LIKE '%a';

-- Ejemplo nombres que tienen un o en cualquier posicion
SELECT * FROM Customers
WHERE CustomerName LIKE '%o%';

-- Ejemplo nombres que tienen un r en la segunda posicion
SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';

-- Ejemplo nombres que comienzan con a y tienen al menos 3 caracteres de longitud
SELECT * FROM Customers
WHERE CustomerName LIKE 'a___%';

-- Ejemplo nombres que 	